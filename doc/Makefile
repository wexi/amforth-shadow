# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         = a4
BUILDDIR      = build
VERSION       = '5.4'
SOURCEDIR     = source

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) -E
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help amforth

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo " books     to make the book versions"
	@echo " htdocs    to make the website"
	@echo " all       all of the anove and copy it together"

clean:
	-rm -rf $(BUILDDIR)/*
	-rm -rf $(SOURCEDIR)/TG/images/*.pdf


htdocs:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) source $(BUILDDIR)/htdocs

books:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) \
           -D master_doc=book    \
	   -D release=$(VERSION) \
           $(SOURCEDIR) $(BUILDDIR)/books/epub
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) \
           -D master_doc=book    \
	   -D release=$(VERSION) \
            $(SOURCEDIR)  $(BUILDDIR)/books/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/books/latex all-pdf
	@echo
	@echo "Build finished."

all: images books htdocs
	mv build/books/epub/AmForth.epub build/htdocs
	mv build/books/latex/amforth.pdf build/htdocs

#IMAGEDIRS can be a list of directories that contain SVG files and are relative to the SOURCEDIR
IMAGEDIRS      = images


# SVG to PDF conversion
DIA2PDF       = dia
DIA2SVG       = dia

# Pattern rule for converting SVG to PDF
%.pdf : %.dia
	$(DIA2PDF) -e $@ -t pdf $<

%.svg : %.dia
	$(DIA2PDF) -e $@ -t svg $<

# Build a list of SVG files to convert to PDFs
PDFs := $(foreach dir, $(IMAGEDIRS), $(patsubst %.dia,%.pdf,$(wildcard $(SOURCEDIR)/TG/$(dir)/*.dia)))
SVGs := $(foreach dir, $(IMAGEDIRS), $(patsubst %.dia,%.svg,$(wildcard $(SOURCEDIR)/TG/$(dir)/*.dia)))
# Make a rule to build the PDFs
images: $(PDFs) $(SVGs)

