#!/usr/bin/python
#
# pySerial based upload & interpreter interaction module for amforth.
#
# Copyright 2011 Keith Amidon (camalot@picncipark.org)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Patcher remarks:
# ================
# 
# This uploader saves dictionary space and words clutter by substituting
# uC register names and application constants with numbers. The
# appl_defs.frt (Forth) file in the application's local directory
# provides the constant definitions. In appl_defs.frt put each constant
# on a line of its own. The first line, if it begins with a backslash
# comment, would be echoed to the screen when uploading the Forth
# code. It is recommended to place in appl_defs.frt global constant
# definitions which would affect compilation of the library and the
# project code. For example:
#
# \ Project Name
# $d5 constant CRC8MSB
# 10 constant max_number_of_users
#
# Invoke the shell with the argument --log log.frt to collect the lines
# which were uploaded to the AmForth system that received an " ok"
# response (log.frt is just a file-name example). This file can later be
# uploaded to another system using a tool simpler than the shell. Leave
# the shell by #exit to close log.frt properly.
#
# Invoke the shell with the argument --rtscts to enable serial port
# RTS/CTS hardware handshake connection.
# 
# =====================================================================
# DOCUMENTATION
# =====================================================================
# This module module may be used as a script or imported for use as a
# part of a larger python program.
#
# Script Usage
# ------------
# When used as a script this module provides two main functions, the
# ability to reliably upload files to the amforth interpreter and an
# interpreter interaction mode with line editing, word completion and
# previous input history.  For information on how to access these
# features when invoking the module as a script, execute it with the
# --help option and read the following sections on the interaction
# protocol and local directives.
#
#
# Interaction Protocol
# --------------------
# The amforth interaction protocol used by this module is to send a
# line to amforth character by character, reading the echos as quickly
# as possible.  Once the entire line has been sent it then reads the
# response up until the " ok" prompt or a prompt that looks like an
# error response.  The character by character handling of echos
# appears to eliminate unexpected device resets when compared to the
# line by line method used by previous tools, possibly by eliminating
# the possibility of serial tx overrun on the device.
#
# To further optimize interaction with the device lines are evaluated
# before sending and redundant whitespace is compressed out.  Lines
# which are all whitespace or whitespace and comments are not sent and
# the next line is handled.
#
#
# Local Directives
# ----------------
# A number of special directives are supported which instruct the
# script to do something and are handled locally without being sent to
# amforth.  Directives may be specified within comments or outside
# comments as controlled by the "#directive" directive.  They must be
# the only contents of a line or they will be ignored.  The directives
# include:
#
#   #include <file>
#       Upload the named <file> before proceeding further.
# 
#   #require <file>
#       Like #include but would skip if <file> was already uploaded
#       during the shell session.
#
#   #cd <dir>
#       Change the current local directory to the location specified.
#       During uploads, this directive affects the current file and
#       files it includes.  Once the current file is complete the old
#       value will be restored.
#
#   #directive <config>
#       Change how directives are discovered.  The valid values for
#       <config> are:
#             none : Stop looking for any directives
#             commented : Only look for directives within comments
#                   Commented directives must be the first word of the
#                   comment.  The remaining text in the comment is the
#                   argument provided to the directive.  There must
#                   not be any other non-whitespace text other than
#                   the comment start and (if required) end characters
#                   and the directive and any directive argument on a
#                   commented directive line.  If any other text is
#                   present on the line an error will be generated.
#             uncommented : Only look for directives outside comments.
#                   Uncommented directives must be the first word of a
#                   line and extend to the end of the line.  If a
#                   directive name exists in a subsequent word of a
#                   line it will be sent to the interpreter as a word
#                   like any other.
#             all : Allow both commented and uncommented directives.
#                   This is the default.
#       During uploads, this directive affects the current file and
#       files it includes.  Once the current file is complete the old
#       value will be restored.
#
#   #timeout <float>
#       Change the timeout value to <float> seconds.  Fractional
#       values are supported.  During uploads, this directive affects
#       the current file and files it includes.  Once the current file
#       is complete the old value will be restored.
#
#   #timeout-next <float>
#       Change the timeout value for the next line sent to the
#       interpreter to <float> seconds.  Fractional values are
#       supported.  The timeout returns to its previous value after
#       the next line is sent to the interpreter.  If this directive
#       is encountered as the very last line of an upload file it will
#       have no effect.
#
#   #error-on-output [<yes-or-no>]
#       Controls whether an error is generated if unexpected output
#       occurs during an upload.  The default is yes.  This directive
#       can not be used in interactive mode as it would not have any
#       effect. During uploads it affects the rest of the current file
#       and any files it includes.  The argument is optional.  If not
#       given it is assumed to be "yes".
#
#   #ignore-error [<yes-or-no>]
#       Ignore any error that occurs later in the current upload file
#       or a file it includes.  The argument is optional.  If given
#       the behavior is set as specified.  If not given it is assumed
#       to be "yes".
#
#   #ignore-error-next [<yes-or-no>]
#       Ignore any error that occurs on the next line.  The argument
#       is optional.  If given the behavior is set as specified.  If
#       not given it is assumed to be "yes".
#
#   #expect-output-next [<regexp>]
#       Expect specific output on the next line.  The argument is
#       optional.  If it is not specified a default regular expression
#       of ".*" (match everything) is assumed.  This overrides the
#       #error-on-output directive.  An error is raised if the output
#       doesn't match the regular expression.  It will be ignored if
#       #ignore-error is yes.  Use of this directive without an
#       argument is the way to prevent an error on output when
#       #error-on-output is yes
#
#   #start-string-word <word>
#       Add a word that starts a string.  The string will end when a
#       double quote character is read.
#
#   #quote-char-word <word>
#       Add a word that quotes the immediately next word
#
#   #interact
#       Start an interactive session before proceeding with file upload.
#       This only makes sense during a file upload.
#
#   #edit [<filename>]
#       Edit a file.  The filename is optional.  If it is provided the
#       named file will be edited.  If it is not provided and the last
#       upload ended in an error the file that had the error will be
#       edited at the location of the error.  If there was no previous
#       upload or the last upload completed successfully but an #edit
#       directive was previously issued with a filename, edit the file
#       previously named.  Finally, if none of these apply an error is
#       printed.  The editor used can be specified with the --editor
#       option when starting the program or through the EDITOR
#       environment variable.
#
#   #update-words
#       This directive is only available in an interactive session.
#       It cause the interaction code to reload the list of words used
#       for completion from the amforth interpreter.  Typically it is
#       not required as words are updated automatically when the
#       session starts and any time a file is uploaded as a results of
#       a #include directive.  The case where it is required is when
#       completion is needed for words defined interactively during
#       the session.
#
#   #update-cpu
#       This directive is only available in an interactive session.
#       It causes the interaction code to read the controller name
#       from the device and tries to load a specific python module
#       which contains names for registers and addresses. These names
#       can be used in forth code and get replace with the corresponding
#       numbers.
#
#   #exit
#       Exit an interactive session or the current upload immediately.
#       If encountered during an upload, no further lines from the
#       file will be processed.
#
#
# Programmatic Usage
# ------------------
# For programmatic usage, a single class named AMForth is provided.
# It can be instantiated with no arguments but typically a serial port
# device and port speed will be provided as the defaults are unlikely
# to be correct.
#
# Once an instance is obtained, and connected the high-level entry
# points are the "upload_file" and "interact" methods, the former
# uploading a file to the AMForth interperter and the latter providing
# an interative interpreter shell with command history and word
# completion.  These methods provide progress information in various
# cases by calling the function stored in the "progress_callback"
# property with three arguments, the type of progress being reported,
# a line number if available (otherwise it is None) and a message with
# further information.  The default progress callback prints this
# information to the screen in a terse format.  Other programs may
# wish to replace this with their own progress presentation function.
#
# Low-level interaction with the AMForth interpreter would typically
# use the "send_line" and "read_response" methods.  Before these can
# be used the serial connection must be established.  The
# serial_connected property indicates whether a connection currently
# exists.  A good way to obtain a connection and rule out errors in
# serial communication is to call "find_prompt" which ensures the
# existence of a serial connection and sends a newline to the AMForth
# interperter and watches for the echo.  This is usually the best way
# of establishing a connection but the "serial_connect" method will
# open a connection without sending anything if that is required.
#
# Elimination of whitespace and discovery of directives (see below) is
# provided through the "preprocess_line" method and directives that
# have common implementations can be handled with the
# "handle_common_directives" method.

# TODO: - Update comments on most functions explaining what they do.

import argparse
import atexit
import copy
import glob
import os
import re
import readline
import serial
import StringIO
import subprocess
import sys
import traceback

class AMForthException(Exception):
    pass

class Behaviors(object):
    """Simple class for storing configurable processing behaviors"""
    def __init__(self):
        self.working_directory = os.getcwd()
        self.filename = None
        self.timeout = 15.0
        self.quote_char_words = ["[char]", "char"]
        self.start_string_words = ['s"', '."', 'abort"']
        self.error_on_output = True
        self.ignore_errors = False
        self.directive_uncommented = True
        self.directive_commented = True
        self.expected_output_regexp = None

    @property
    def directive_config(self):
        "Get the current directive configuration"
        if self.directive_uncommented:
            if self.directive_commented:
                return "all"
            else:
                return "uncommented"
        else:
            if self.directive_commented:
                return "commented"
            else:
                return "none"

    @directive_config.setter
    def directive_config(self, value):
        "Set the directive configuration"
        if value == "none":
            self.directive_uncommented = False
            self.directive_commented = False
        elif value == "all":
            self.directive_uncommented = True
            self.directive_commented = True
        elif value == "uncommented":
            self.directive_uncommented = True
            self.directive_commented = False
        elif value == "commented":
            self.directive_uncommented = False
            self.directive_commented = True
        else:
            raise AMForthException("Unknown directive config: %s" % value)


class BehaviorManager(object):
    """Class for determining currently configured behavior

    This class manages the lifetime of behaviors established through
    configuration options and directives to minimize the impact of
    that support on the AMForth class. """
    def __init__(self):
        self.default_behavior = Behaviors()
        self.clear()

    def clear(self):
        "Clear out accumulated behavior"
        self._next_line_behavior = None
        self._current_line_behavior = None
        self._file_behaviors = []

    @property
    def current_behavior(self):
        """The behavior currently in effect"""
        if self._current_line_behavior:
            return self._current_line_behavior
        elif self._file_behaviors:
            return self._file_behaviors[0]
        else:
            return self.default_behavior

    def advance_line(self):
        """Call when changing to the next line"""
        self._current_line_behavior = self._next_line_behavior
        self._next_line_behavior = None

    def push_file(self, filename):
        """Call when starting processing a new nested file"""
        behavior = copy.deepcopy(self.current_behavior)
        behavior.filename = filename
        self._file_behaviors.insert(0, behavior)

    def pop_file(self):
        """Call when returning from a nested file"""
        del(self._file_behaviors[0])

    @property
    def next_line_behavior(self):
        """The behavior to use for the next line"""
        return self._next_line_behavior

    @next_line_behavior.setter
    def next_line_behavior(self, behavior):
        self._next_line_behavior = behavior

    @property
    def current_file_behavior(self):
        """The behavior for the current file.

        Will raise an exception if there is no file currently."""
        return self._file_behaviors[0]

    @current_file_behavior.setter
    def current_file_behavior(self, behavior):
        self._file_behaviors[0] = behavior


class AMForth(object):
    "Class for interacting with the AMForth interpreter"

    amforth_error_cre = re.compile(" \?\? -\d+ \d+ \r\n> $")
    upload_directives = [
        "#cd", "#require", "#include", "#directive", "#ignore-error",
        "#ignore-error-next", "#error-on-output", "#expect-output-next",
        "#string-start-word", "#quote-char-word",
        "#timeout", "#timeout-next", "#interact", "#exit"
        ]
    interact_directives = [
        "#cd", "#edit", "#require", "#include", "#directive", "#ignore-error",
        "#error-on-output", "#string-start-word", "#quote-char-word",
        "#timeout", "#timeout-next", "#update-words", "#exit", 
        "#update-cpu", "#update-files"
        ]
    # standard words are usually uppercase, but amforth needs
    # them in lowercase.
    stdwords = [
        # *** Wordset BLOCK
        "BLK","BLOCK","BUFFER","EVALUATE","FLUSH","LOAD","SAVE-BUFFERS",
        "UPDATE",
        # *** Wordset BLOCK-EXT
        "EMPTY-BUFFERS","LIST","REFILL","SCR","THRU",
        # *** Wordset CORE
        "#S","*/MOD","+LOOP","/MOD","0<","0=","1+","1-","2!",
        "2*","2/","2@","2DROP","2DUP","2OVER","2SWAP",">BODY",
        ">IN",">NUMBER",">R","?DUP","ABORT","ABORT\"","ABS",
        "ACCEPT","ALIGN","ALIGNED","ALLOT","AND","BASE","BEGIN",
        "BL","C!","C,","C@","CELL+","CELLS","CHAR","CHAR+",
        "CHARS","CONSTANT","COUNT","CR","CREATE","DECIMAL",
        "DEPTH","DO","DOES>","DROP","DUP","ELSE","EMIT","ENVIRONMENT?",
        "EVALUATE","EXECUTE","EXIT","FILL","FIND","FM/MOD",
        "HERE","HOLD","I","IF","IMMEDIATE","INVERT","J","KEY",
        "LEAVE","LITERAL","LOOP","LSHIFT","M*","MAX","MIN",
        "MOD","MOVE","NEGATE","OR","OVER","POSTPONE","QUIT",
        "R>","R@","RECURSE","REPEAT","ROT","RSHIFT","S\"","S>D",
        "SIGN","SM/REM","SOURCE","SPACE","SPACES","STATE","SWAP",
        "THEN","TYPE","U.","U<","UM*","UM/MOD","UNLOOP","UNTIL",
        "VARIABLE","WHILE","WORD","XOR","[CHAR]",
        # *** Wordset CORE-EXT
        ".R","0<>",
        "0>","2>R","2R>","2R@",":NONAME","?DO","AGAIN","C\"",
        "CASE","COMPILE,","ENDCASE","ENDOF","ERASE","FALSE",
        "HEX","MARKER","NIP","OF","PAD","PARSE","PICK","REFILL",
        "RESTORE-INPUT","ROLL","SAVE-INPUT","SOURCE-ID","TO",
        "TRUE","TUCK","U.R","U>","UNUSED","VALUE","WITHIN",
        "[COMPILE]",
        # *** Wordset CORE-EXT-obsolescent
        "#TIB","CONVERT","EXPECT","QUERY","SPAN",
        "TIB",
        # *** Wordset DOUBLE
        "2CONSTANT","2LITERAL","2VARIABLE","D+","D-",
        "D.","D.R","D0<","D0=","D2*","D2/","D<","D=","D>S",
        "DABS","DMAX","DMIN","DNEGATE","M*/","M+",
        # *** Wordset DOUBLE-EXT
        "2ROT","DU<",
        # *** Wordset EXCEPTION
        "CATCH","THROW",
        # *** Wordset EXCEPTION-EXT
        "ABORT","ABORT\"",
        # *** Wordset FACILITY
        "AT-XY","KEY?","PAGE",
        # *** Wordset FACILITY-EXT
        "EKEY","EKEY>CHAR","EKEY?","EMIT?","MS","TIME&DATE",
        # *** Wordset FILE
        "BIN","CLOSE-FILE","CREATE-FILE","DELETE-FILE","FILE-POSITION",
        "FILE-SIZE","INCLUDE-FILE","INCLUDED","OPEN-FILE","R/O",
        "R/W","READ-FILE","READ-LINE","REPOSITION-FILE","RESIZE-FILE",
        "S\"","SOURCE-ID","W/O","WRITE-FILE","WRITE-LINE",
        # *** Wordset FILE-EXT
        "FILE-STATUS",
        "FLUSH-FILE","REFILL","RENAME-FILE",
        # *** Wordset FLOAT
        ">FLOAT","D>F",
        "F!","F*","F+","F-","F/","F0<","F0=","F<","F>D","F@",
        "FALIGN","FALIGNED","FCONSTANT","FDEPTH","FDROP","FDUP",
        "FLITERAL","FLOAT+","FLOATS","FLOOR","FMAX","FMIN",
        "FNEGATE","FOVER","FROT","FROUND","FSWAP","FVARIABLE",
        "REPRESENT",
        # *** Wordset FLOAT-EXT
        "DF!","DF@","DFALIGN","DFALIGNED","DFLOAT+",
        "DFLOATS","F**","F.","FABS","FACOS","FACOSH","FALOG",
        "FASIN","FASINH","FATAN","FATAN2","FATANH","FCOS","FCOSH",
        "FE.","FEXP","FEXPM1","FLN","FLNP1","FLOG","FS.","FSIN",
        "FSINCOS","FSINH","FSQRT","FTAN","FTANH","F~","PRECISION",
        "SET-PRECISION","SF!","SF@","SFALIGN","SFALIGNED","SFLOAT+",
        "SFLOATS",
        # *** Wordset LOCAL
        "(LOCAL)","TO",
        # *** Wordset LOCAL-EXT
        "LOCALS|",
        # *** Wordset MEMORY
        "ALLOCATE","FREE",
        "RESIZE",
        # *** Wordset SEARCH
        "DEFINITIONS","FIND","FORTH-WORDLIST","GET-CURRENT",
        "GET-ORDER","SEARCH-WORDLIST","SET-CURRENT","SET-ORDER",
        "WORDLIST",
        # *** Wordset SEARCH-EXT
        "ALSO","FORTH","ONLY","ORDER","PREVIOUS",
        # *** Wordset STRING
        "-TRAILING","/STRING","BLANK","CMOVE","CMOVE>","COMPARE",
        "SEARCH","SLITERAL",
        # *** Wordset TOOLS
        ".S","DUMP","SEE","WORDS",
        # *** Wordset TOOLS-EXT
        ";CODE",
        "AHEAD","ASSEMBLER","BYE","CODE","CS-PICK","CS-ROLL",
        "EDITOR","STATE","[ELSE]","[IF]","[THEN]",
        # *** Wordset TOOLS-EXT-obsolescent
        "FORGET",
    ]
    def __init__(self, serial_port="/dev/amforth", rtscts=False, speed=38400):
        self.debug = False
        self.max_line_length = 80
        self.progress_callback = self.print_progress
        self.editor = None
        self._serial_port = serial_port
        self._serial_rtscts = rtscts
        self._serial_speed = speed
        self._serialconn = None
        self._readline_initialized = False
        self._amforth_dp = None
        self._filedirs = {}
        self._search_path = []
        self._uploaded = set()
        self._amforth_words = []
        self._amforth_regs  = {}
        self._amforth_cpu = ""
        self._last_error = ()
        self._last_edited_file = None
        self._config = BehaviorManager()
        if os.environ.has_key("AMFORTH_LIB"):
            self._search_list = os.environ["AMFORTH_LIB"].split(":")
        else:
            self._search_list=["."]

        # define application constants to substitute
        try:
            ad_file = open("appl_defs.frt")
            ad_line = ad_file.readline()
            ad_mat = re.match("^\\\\\s+(\S.*)\n", ad_line)
            if ad_mat:
                self.progress_callback("Information", None, "appl_defs: " + ad_mat.group(1))
            ad_pat=re.compile("^\s*(\S+)\s+constant\s+(\S+)\s")
            ad_def = {}
            while ad_line:
                ad_mat = ad_pat.match(ad_line)
                if ad_mat:
                    ad_def[ad_mat.group(2)] = ad_mat.group(1)
                ad_line = ad_file.readline()
        except:
            ad_def = {}
        self.progress_callback("Information", None, "appl_defs: %d loaded" % len(ad_def))
        self._appl_defs = ad_def

    @property
    def serial_port(self):
        "Serial port device attached to AMForth"
        return self._serial_port

    @serial_port.setter
    def serial_port(self, value):
        """Set the serial port device attached to AMForth

        If the value provided is different than the current value any
        existing serial connection will be closed and a new connection
        opened."""
        if self._serial_port != value:
            self._serial_port = value
            self.serial_reconnect()

    @property
    def serial_rtscts(self):
        "RTS/CTS enable of serial connection to AMForth"
        return self._serial_rtscts

    @serial_rtscts.setter
    def serial_rtscts(self, value):
        if self._serial_rtscts != value:
            self._serial_rtscts = value
            self.serial_reconnect()

    @property
    def serial_speed(self):
        "Speed of the serial connection to AMForth"
        return self._serial_speed

    @serial_speed.setter
    def serial_speed(self, value):
        if self._serial_speed != value:
            self._serial_speed = value
            self.serial_reconnect()

    @property
    def serial_connected(self):
        "Boolean status for whether currently connected to AMForth"
        return self._serialconn is not None

    def main(self):
        "Main function called when module is used as a script"
        upload_files, interact = self.parse_arg()
        try:
            for fn in upload_files:
                if fn == "-":
                    self.interact()
                else:
                    self.upload_file(fn, install=True)
            if interact:
                self.interact()
        except AMForthException:
            return 1
        except KeyboardInterrupt:
            print "\nAborted with keyboard interrupt"
        except Exception, e:
            print "\n---- Unexpected exception ----"
            traceback.print_exc()
            return 1
        finally:
            self.serial_disconnect()
            if self._log:
                self._log.close()
        return 0

    def parse_arg(self):
        "Argument parsing used when module is used as a script"
        parser = argparse.ArgumentParser(description="Interact with AMForth", 
             epilog="""
The environment variable AMFORTH_LIB can be set with to a colon (:) separated 
list of directories that are recursivly searched for file names. If not set, 
the current work directory is used instead.

The script assumes to be located in the standard amforth installation under
the tools/ directory. It uses files from the core/devices directories for
additional definitions (e.g. register names)
"""
        )
        parser.add_argument("--timeout", "-t", action="store",
            type=float, default=15.0,
            help="Response timeout (seconds, float value)")
        parser.add_argument("--port", "-p", action="store",
            type=str, default=self.serial_port, help="Serial port name")
        parser.add_argument("--rtscts", action="store_true",
            default=self.serial_rtscts, help="Serial port RTS/CTS enable")
        parser.add_argument("--speed", "-s", action="store",
            type=int, default=self.serial_speed, help="Serial port speed")
        parser.add_argument("--log", type=argparse.FileType('w'),
                            help="Uploaded Forth log-file")
        parser.add_argument("--line-length", "-l", action="store",
            type=int, default=self.max_line_length,
            help="Maximum length of amforth input line")
        parser.add_argument("--interact", "-i", action="store_true",
            help="Enter interactive prompt after upload")
        parser.add_argument("--directive", "-d", action="store",
            default="all",
            help="Local directive configuration (where found)")
        parser.add_argument("--editor", action="store",
            default = os.environ.get("EDITOR", None),
            help="Editor to use for #edit directive")
        parser.add_argument("--no-error-on-output", action="store_true",
            help="Indicate an error if upload causes output")
        parser.add_argument("--ignore-error", action="store_true",
            help="Ignore errors during upload (not recommended)")
        parser.add_argument("--debug-serial", action="store_true",
            help="Output extra info about serial transfers in stderr")
        parser.add_argument("files", nargs="*", help="may be found via the environment variable AMFORTH_LIB")
        arg = parser.parse_args()
        self.debug = arg.debug_serial
        self.max_line_length = arg.line_length
        self._serial_port = arg.port
        self._serial_rtscts = arg.rtscts
        self._serial_speed = arg.speed
        self._log = arg.log
        self.editor = arg.editor
        behavior = self._config.current_behavior
        behavior.error_on_output = not arg.no_error_on_output
        behavior.directive_config = arg.directive
        behavior.timeout = arg.timeout
        behavior.ignore_errors = arg.ignore_error
        return arg.files, (arg.interact or len(arg.files) == 0)

    def serial_connect(self, port=None, rtscts=None, speed=None):
        """Connect to AMForth on a serial port

        The port and speed argument are optional.  If not specified
        the current values set in the object are used.  These will be
        the defaults if the have not been changed.  If either is
        specified corresponding property of the instance will be
        updated to the new value.

        This is safe to call even if a connection already exists as
        existing an existing connection will be closed before the new
        connection is made."""
        if port != None:
            self.serial_port = port
        if rtscts != None:
            self.serial_rtscts = rtscts
        if speed != None:
            self.serial_speed = speed
        if self._serialconn:
            self.serial_disconnect()
        try:
            timeout = self._config.current_behavior.timeout
            self._serialconn = serial.Serial(self.serial_port,
                                             self.serial_speed,
                                             serial.EIGHTBITS,
                                             serial.PARITY_NONE,
                                             serial.STOPBITS_ONE,
                                             timeout, False,
                                             self.serial_rtscts,
                                             None, False)
        except serial.SerialException, e:
            raise AMForthException("Serial port connect failure: %s" % str(e))

    def serial_disconnect(self):
        """Disconnect the serial connection to AMForth

        This is safe to call even if there is currently no connection."""
        if self._serialconn:
            self._serialconn.close()
            self._serialconn = None

    def serial_reconnect(self):
        """Reconnect the serial connection to AMForth

        This is the same as calling serial_connect while there is an
        existing connection.  It is provided to make the clear when
        the intent is to re-establish an existing connection (usually
        to apply new settings) versus creating a new connectoion."""
        self.serial_connect()

    def find_prompt(self):
        "Attempt to find a prompt by sending a newline and verifying echo"
        if not self.serial_connected:
            self.serial_connect()
        # Use a short timeout to quickly detect if can't communicate
        self._serialconn.timeout = 2.0
        try:
            try:
                self.send_line("\n") # Get empty line echo to make sure ready
                self.read_response() # Throw away the response.
            except serial.SerialException, e:
                self.progress_callback("Error", None, str(e))
                raise AMForthException("Failed to get prompt: %s" % str(e))
        finally:
            # Restore the current timeout
            self._serialconn.timeout = self._config.current_behavior.timeout

    def upload_file(self, filename, install=False):
        if not install and filename in self._uploaded:
            return False
        else:
            self._uploaded.add(filename)
        self._update_files()
        if os.path.dirname(filename):
          fpath=filename
          self.progress_callback("Information", None,  "using "+ filename+" verbatim")
        else:
          if not self._filedirs.has_key(filename):
            self.progress_callback("Error", None,  "file "+ filename+" not found in search path")
            raise AMForthException("file " + filename + " not found in search path")
          if len(self._filedirs[filename])!=1:
            # oops, too many files or no one at all no file found?
            raise AMForthException("Wrong # of file occurances: " + filename + " ("+str(len(self._filedirs[filename]))+")")
          self.progress_callback("Information", None,  "using "+ filename+" from"+ self._filedirs[filename][0])
          fpath = os.path.join(self._filedirs[filename][0], filename)
        self._config.push_file(fpath)
        fdir=os.path.dirname(fpath)
        print "**** " + self._config.current_behavior.working_directory
        if os.path.isabs(fdir):
          dirpath = os.path.normpath(fdir)
        else:
          oldpath = self._config.current_behavior.working_directory
          dirpath = os.path.normpath(os.path.join(oldpath, fdir))
        self._config.current_behavior.working_directory = dirpath

        try:
            try:
                self.find_prompt()
            except AMForthException, e:
                self.progress_callback("Error", None, str(e))
                raise
            self._update_cpu()
            self.progress_callback("File", None, fpath)
            try:
                with open(fpath, "r") as f:
                    self._send_file_contents(f)
            except (OSError, IOError), e:
                self.progress_callback("Error", None, str(e))
                raise AMForthException("Unknown file: " + fpath)
            self._last_error = ()
        finally:
            print "**** " + self._config.current_behavior.working_directory
            self._config.pop_file()
            self._serialconn.timeout = self._config.current_behavior.timeout
            try:
                os.chdir(self._config.current_behavior.working_directory)
            except OSError, e:
                errmsg = ("Failed to change to directory '%s': %s"
                          % (self._config.current_behavior.working_directory,
                             str(e)))
                self.progress_callback("Error", None, errmsg)
                raise AMForthException(errmsg)
        return True

    def _send_file_contents(self, f):
        in_comment = False
        lineno = 0
        for full_line in f:
            self._config.advance_line()
            self._serialconn.timeout = self._config.current_behavior.timeout
            try:
                os.chdir(self._config.current_behavior.working_directory)
            except OSError, e:
                errmsg = ("Failed to change to directory '%s': %s"
                          % (self._config.current_behavior.working_directory,
                             str(e)))
                self.progress_callback("Error", None, errmsg)
                raise AMForthException(errmsg)
            lineno += 1
            if full_line and full_line[-1] == "\n":
                full_line = full_line[:-1]
            if full_line and full_line[-1] == "\r":
                full_line = full_line[:-1]
            line = full_line.strip()
            if len(line) == 0:
                if in_comment:
                    self.progress_callback("Comment", lineno, full_line)
                else:
                    self.progress_callback("Whitespace", lineno, full_line)
                continue
            try:
                (line, in_comment,
                 directive,
                 directive_arg) = self.preprocess_line(full_line, in_comment,
                                                       self.upload_directives)
            except AMForthException, e:
                self._record_error(lineno)
                self.progress_callback("Error", lineno, full_line)
                self.progress_callback("Error", None, str(e))
                raise
            if directive:
                self.progress_callback("Directive", lineno, full_line)
                if directive == "#exit":
                    break
                elif directive == "#interact":
                    self.interact()
                    continue
                self.handle_common_directives(directive, directive_arg)
                continue
            if len(line) == 0:
                self.progress_callback("Comment", lineno, full_line)
                continue
            try:
                self.send_line(line)
            except AMForthException, e:
                self._record_error(lineno)
                self.progress_callback("Error", lineno, full_line)
                self.progress_callback("Error", None, str(e))
                raise
            response = self.read_response()
            self.progress_callback("Sent", lineno, full_line)
            if response[-3:] == " ok":
                if len(response) > 3:
                    for l in StringIO.StringIO(response[:-3]):
                        self.progress_callback("Output", lineno, l.rstrip())
                    r = self._config.current_behavior.expected_output_regexp
                    if r:
                        m = re.match(r, response[:-3], re.MULTILINE)
                        response_ok = m is not None
                    else:
                        response_ok = False
                    if not response_ok:
                        if self._config.current_behavior.error_on_output:
                            errmsg = "Unexpected output after line."
                            errmsg += " To allow, specify --no-error-on-output."
                            self.progress_callback("Error", lineno, errmsg)
                            if not self._config.current_behavior.ignore_errors:
                                self._record_error(lineno)
                                raise AMForthException(errmsg)
                elif self._log:
                    self._log.write(line + "\n")
                    
            else:
                self.progress_callback("Error", None, response)
                if not self._config.current_behavior.ignore_errors:
                    self._record_error(lineno)
                    raise AMForthException("Error in line sent")

    def preprocess_line(self, line, in_delim_comment=False, directives=[]):
        # Compresses whitespace, including comments so send minimum
        # data to atmega
        result =  []
        comment_words = []
        char_quote = False
        in_string = False
        in_line_comment = False
        directive = None
        directive_arg = []
        words = self._split_space_or_tab(line)
        for iw,w in enumerate(words):
            if in_string:
                try:
                    i = w.index('"')
                except ValueError:
                    result[-1] += " " + w
                    continue
                in_string = False
                result[-1] += " " + w[:i+1]
                result[-1] = result[-1][1:]  # remove extra initial space
                w = w[i+1:]

            if in_delim_comment:
                try:
                    i = w.index(")")
                except ValueError:
                    pass
                else:
                    in_delim_comment = False
                    w = w[i+1:]

            if not w:
                continue
            if w in self._appl_defs:
                w = self._appl_defs[w]
            elif w in self._amforth_regs:
                w = self._amforth_regs[w]
            elif w.upper() in self.stdwords:
                w = w.lower()
            if char_quote:
                result.append(w)
                char_quote = False
                continue

            if w == "(":
                if not in_delim_comment:
                    in_delim_comment = True
                else:
                    raise AMForthException("Illegal nested comment")
                continue

            if not in_delim_comment and not in_line_comment:
                if w == "\\" and (iw == 0 or words[iw-1] != "postpone"):
                    in_line_comment = True
                    continue

                elif w in self._config.current_behavior.start_string_words:
                    in_string = True
                    result.append(w)
                    result.append('')
                    continue

                if w in self._config.current_behavior.quote_char_words:
                    char_quote = True  # no continue deliberately

                if directive:
                    directive_arg.append(w)
                else:
                    if (self._config.current_behavior.directive_uncommented
                        and not result
                        and w in directives):
                        directive = w
                    else:
                        result.append(w)
            else:
                if directive:
                    directive_arg.append(w)
                else:
                    if (self._config.current_behavior.directive_commented
                        and not result
                        and not comment_words
                        and w in directives):
                        directive = w
                    else:
                        comment_words.append(w)

        if directive and len(result):
            raise AMForthError("Directive must not have other content: %s",
                               " ".join(result))

        return (" ".join(result), in_delim_comment,
                directive, " ".join(directive_arg))

    def _record_error(self, lineno):
        fn = self._config.current_behavior.filename
        if fn:
            self._last_error = (fn, lineno)

    def _split_space_or_tab(self, line):
        result = [""]
        for c in line:
            if c == " " or c == "\t":
                result.append("")
            else:
                result[-1] += c
        return result

    def handle_common_directives(self, directive, directive_arg):
        if directive == "#include" or directive == "#require":
            fn = directive_arg.strip()
            if self.upload_file(fn, directive == "#include"):
                resume_fn = self._config.current_behavior.filename
                if resume_fn:
                    self.progress_callback("File", None, resume_fn + " (resumed)")
            else:
                self.progress_callback("Information", None, "already uploaded")
        elif directive == "#cd":
            dirname = directive_arg.strip()
            if os.path.isabs(dirname):
                dirpath = os.path.normpath(dirname)
            else:
                oldpath = self._config.current_behavior.working_directory
                dirpath = os.path.normpath(os.path.join(oldpath, dirname))
            self._config.current_behavior.working_directory = dirpath
        elif directive == "#timeout":
            try:
                timeout = float(directive_arg)
            except ValueError, e:
                self.progress_callback("Error", None, "Invalid timeout")
                return
            self._config.current_file_behavior.timeout = timeout
        elif directive == "#timeout-next":
            try:
                timeout = float(directive_arg)
            except ValueError, e:
                self.progress_callback("Error", None, "Invalid timeout")
                return
            behavior = copy.deepcopy(self._config.current_behavior)
            behavior.timeout = timeout
            self._config.next_line_behavior = behavior
        elif directive == "#ignore-error":
            v = self._yes_or_no_arg(directive_arg)
            self._config.current_file_behavior.ignore_errors = v
        elif directive == "#ignore-error-next":
            v = self._yes_or_no_arg(directive_arg)
            behavior = copy.deepcopy(self._config.current_behavior)
            behavior.ignore_errors = v
            self._config.next_line_behavior = behavior
        elif directive == "#error-on-output":
            v = self._yes_or_no_arg(directive_arg)
            behavior = self._config.current_file_behavior
            behavior.error_on_output = v
        elif directive == "#expect-output-next":
            regexp = directive_arg.strip()
            if not regexp:
                regexp = ".*"
            behavior = copy.deepcopy(self._config.current_behavior)
            behavior.expected_output_regexp = regexp
            self._config.next_line_behavior = behavior
        elif directive == "#start-string-word":
            behavior = self._config.current_file_behavior
            behavior.start_string_words.append(directive_arg.strip().split(" "))
        elif directive == "#quote-char-word":
            behavior = self._config.current_file_behavior
            behavior.quote_char_words.append(directive_arg.strip().split(" "))
        elif directive == "#directive":
            behavior = self._config.current_file_behavior
            behavior.directive_config = directive_arg.strip()
        else:
            errmsg = "Unknown directive: %s %s" % (directive, directive_arg)
            raise AMForthException(errmsg)

    def _yes_or_no_arg(self, directive_arg):
        if not directive_arg:
            return True
        else:
            if directive_arg.lower() == "yes":
                return True
            elif directive_arg.lower() == "no":
                return False
            else:
                errmsg = "Invalid directive argument.  Must be yes or no."
                raise AMForthExcetion(errmsg)

    def send_line(self, line):
        if len(line) > self.max_line_length - 1: # For newline
            raise AMForthException("Input line > %d char"
                                   % self.max_line_length)
        if self.debug:
            sys.stderr.write("|a(     )" + repr(line)[1:-1] + "\n")
            sys.stderr.write("|s(     )")
        for c in line + "\n":
            if self.debug:
                sys.stderr.write(repr(c)[1:-1]+"->")
                sys.stderr.flush()
            self._serialconn.write(c)
            self._serialconn.flush()
            r = self._serialconn.read(1) # Read echo of character we just sent
            while r and (r != c or (c == '\t' and r != ' ')):
                if self.debug:
                    sys.stderr.write(repr(r)[1:-1])
                    sys.stderr.flush()
                r = self._serialconn.read(1)
            if not r:
                raise AMForthException("Input character not echoed.")
            if self.debug:
                sys.stderr.write(repr(r)[1:-1] + "|")
                sys.stderr.flush()
        if self.debug:
            sys.stderr.write("\n")

    def read_response(self):
        if self.debug:
            sys.stderr.write("|r(     )")
        response = ""
        r = self._serialconn.read(1)
        while r != "":
            if self.debug:
                sys.stderr.write(repr(r)[1:-1])
                sys.stderr.flush()
            response = response + r
            if response[-3:] == " ok":
                # Interactive prompt read and discarded while handling
                # echo of next line sent.
                break
            elif self.amforth_error_cre.search(response) is not None:
                response = response[:-3]  # Don't return prompt in response
                break
            r = self._serialconn.read(1)
        if not response:
            response = "Timed out waiting for ok response"
        if self.debug:
            sys.stderr.write("\n")
        return response

    def print_progress(self, type, lineno, info):
        if not lineno:
            print "|%s=%s" % (type[:1], info)
        else:
            print "|%s|%5d|%s" % (type[:1], lineno, info)

    def interact(self):
        self.progress_callback("Interact", None,
                               "Entering amforth interactive interpreter")
        # Use null filename "file" to capture interactive config
        self._config.push_file(None)
        try:
            self.find_prompt()
        except AMForthException, e:
            self.progress_callback("Error", None, str(e))
            self._config.pop_file()
            raise
        self._init_readline()
        in_comment = False
        while True:
            try:
                if self._amforth_cpu:
                  prompt="("+self._amforth_cpu+")> "
                else:
                  prompt="> "
                full_line = raw_input(prompt)
            except EOFError, e:
                print ""
                break
            self._config.advance_line()
            self._serialconn.timeout = self._config.current_behavior.timeout
            try:
                os.chdir(self._config.current_behavior.working_directory)
            except OSError, e:
                errmsg = ("Failed to change to directory '%s': %s"
                          % (self._config.current_behavior.working_directory,
                             str(e)))
                self.progress_callback("Error", None, errmsg)
                raise AMForthException(errmsg)
            (line, in_comment,
             directive,
             directive_arg) = self.preprocess_line(full_line, in_comment,
                                                   self.interact_directives)
            try:
                if directive:
                    self.progress_callback("Directive", None, full_line)
                    if directive == "#exit":
                        break
                    elif directive == "#update-words":
                        self._update_words()
                        continue
                    elif directive == "#update-cpu":
                        self._update_cpu()
                        continue
                    elif directive == "#update-files":
                        self._update_files()
                        continue
                    elif directive == "#edit":
                        if directive_arg:
                            self.edit_file(directive_arg.strip())
                        elif self._last_error:
                            self.edit_file(*self._last_error)
                        elif self._last_edited_file:
                            self.edit_file(self._last_edited_file)
                        else:
                            print "No file to edit"
                        continue
                    self.handle_common_directives(directive, directive_arg)
                    if directive == "#include" or directive == "#require":
                        self._update_words()
                    continue
                if in_comment or not line:
                    continue
                else:
                    self.send_line(line)
                    print self.read_response()
            except AMForthException, e:
                print "Error: " + str(e)
        self._config.pop_file()
        self._serialconn.timeout = self._config.current_behavior.timeout
        try:
            os.chdir(self._config.current_behavior.working_directory)
        except OSError, e:
            errmsg = ("Failed to change to directory '%s': %s"
                      % (self._config.current_behavior.working_directory,
                         str(e)))
            self.progress_callback("Error", None, errmsg)
            raise AMForthException(errmsg)
        self.progress_callback("Interact", None,
                               "Leaving interactive interpreter")

    def _init_readline(self):
        if not self._readline_initialized:
            readline.set_completer_delims(" ")
            readline.set_completer(self._rlcompleter)
            readline.parse_and_bind("tab: complete")
            histfn = os.path.join(os.path.expanduser("~"),
                                  ".frt-interact.history")
            try:
                readline.read_history_file(histfn)
            except IOError, e:
                pass
            self._update_words()
            self._update_cpu()
            self._update_files()
            atexit.register(readline.write_history_file, histfn)

    def _update_words(self):
        # get all words that are available in the search order      
        self.send_line("base @ decimal dp u. base !")
        dp = self.read_response()
        if dp[-3:] != " ok":
            return  # Something went wrong, just silently ignore
        dp = int(dp[:-3])
        if self._amforth_dp != dp:
            self._amforth_dp = dp
            self.send_line("words")
            words = self.read_response()
            if words[-3:] != " ok":
                return # Something went wrong, just silently ignore
            self._amforth_words = words.split(" ") + self.interact_directives

    def _update_cpu(self):
        self.progress_callback("Information", None, "getting MCU name..")
        self.send_line("s\" cpu\" environment search-wordlist drop execute itype")
        words = self.read_response()
        if words[-3:] != " ok":
            return # Something went wrong, just silently ignore
        mcudef = words[:-3].lower()
        self._amforth_regs = {}
        sys.path.insert(1,os.path.join(os.path.dirname(sys.argv[0]),"..", "core", "devices",mcudef))
        try:
          from device import MCUREGS
          self._amforth_regs=MCUREGS
          self._amforth_cpu = words[:-3]
          self.progress_callback("Information", None, "successfully loaded register definitions for " + mcudef)
        except:
          self.progress_callback("Warning", None, "failed loading register definitions for " + mcudef + " .. continuing")

    def _update_files(self):
      self.progress_callback("Information", None, "getting filenames on the host")
      self._filedirs = {}
      for p in self._search_list:
        self.progress_callback("Information", None, "  Reading "+p)
        for root, dirs, files in os.walk(p):
          for f in files:
            fpath=os.path.realpath(os.path.join(root, f))
            fpathdir=os.path.dirname(fpath)
            if self._filedirs.has_key(f):
              # check for duplicates
              for d in self._filedirs[f]:
                if d==fpathdir:
                  fpath=None
              if fpath: self._filedirs[f].append(fpathdir)
            else:
              self._filedirs[f]=[fpathdir]

    def _rlcompleter(self, text, state):
        if state == 0:
            line_words = readline.get_line_buffer().split(" ")
            if line_words and line_words[-1] == text:
                line_words = line_words[:-1]
            while line_words and line_words[-1] == "":
                line_words = line_words[:-1]
            if line_words:
                if line_words[-1] in ["#require", "#include", "#edit"]:
                    self._rl_matches = [f for f in self._filedirs.keys()
                                          if f.startswith(text)]
                elif line_words[-1] == "#cd":
                    fnames = glob.glob(text + '*')
                    self._rl_matches = [f + "/" for f in fnames
                                        if os.path.isdir(f)]
                elif line_words[-1] == "#directive":
                    self._rl_matches = [w for w in ("all ", "uncommented ",
                                                    "commented ", "none ")
                                         if w.startswith(text)]
                elif line_words[-1] in ["#error-on-output",
                                        "#ignore-error", "#ignore-error-next"]:
                    self._rl_matches = [w for w in ["yes", "no"]
                                        if w.startswith(text)]
                elif line_words[-1] in ["#exit", "#update-words",
                                        "#timeout", "#timeout-next"]:
                    self._rl_matches = []
                else:
                    self._rl_matches = [w + " "  for w in self._amforth_words+self._amforth_regs.keys()
                                        if not text or w.startswith(text)]
            else:
                self._rl_matches = [w + " " for w in self._amforth_words+self._amforth_regs.keys()
                                    if not text or w.startswith(text)]
            if self._rl_matches:
                return self._rl_matches[0]
            else:
                return None
        else:
            if state < len(self._rl_matches):
                return self._rl_matches[state]
            else:
                return None

    def edit_file(self, filename, lineno=0):
        if self.editor:
            # Have to construct command line differently for different
            # editors to be able to move to specific line...
            exename = os.path.basename(self.editor)
            if exename in ["emacs", "emacsclient", "nano"]:
                cmd = [self.editor, "+" + str(lineno), filename]
            elif exename in ["vi", "vim"]:
                cmd = [self.editor, filename, "+" + str(lineno)]
            elif exename == "mcedit":
                cmd = [self.editor, " " + filename, ":" + str(lineno)]
            elif exename == "gedit":
                cmd = [self.editor, "-b", filename, "+" + str(lineno)]
            elif exename == "pn.exe":
                cmd = [self.editor, " --line", " "+str(lineno)+" ", filename]
            else:
                cmd = [self.editor, filename]
            try:
                subprocess.call(cmd)
                self._last_edited_file = filename
            except OSError, e:
                raise AMForthException("Could not start editor: "+self.editor)
        else:
            raise AMForthException("No editor specified.  Use --editor or EDITOR environment variable")

if __name__ == "__main__":
    sys.exit(AMForth().main())

