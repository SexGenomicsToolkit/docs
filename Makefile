SPHINXOPTS        = -b html -c .
SPHINXBUILD       = sphinx-build
SOURCEDIR         = src
BUILDDIR          = html

.PHONY: all clean

all: $(BUILDDIR)

clean:
	rm -rf $(BUILDDIR)

rebuild: clean $(BUILDDIR)

$(BUILDDIR): $(SOURCEDIR)/*.rst
	@$(SPHINXBUILD) "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS)
