SPHINXOPTS        = -b html -c .
SPHINXBUILD       = sphinx-build
SOURCEDIR         = src
BUILDDIR          = .

.PHONY: all clean

all: $(BUILDDIR)

$(BUILDDIR): $(SOURCEDIR)/*.rst
	@$(SPHINXBUILD) "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS)
