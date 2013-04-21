# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         = a4
BUILDDIR      = build
VERSION       = '5.1'

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS)
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help amforth

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo " amforth     to make an AmForth Website"

clean:
	-rm -rf $(BUILDDIR)/*

htdocs:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) source $(BUILDDIR)/htdocs

books:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) \
           -D master_doc=book    \
	   -D release=$(VERSION) \
           source $(BUILDDIR)/books/epub
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) \
           -D master_doc=book    \
	   -D release=$(VERSION) \
            source  $(BUILDDIR)/books/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/books/latex all-pdf
	@echo
	@echo "Build finished."


