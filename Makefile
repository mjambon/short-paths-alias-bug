#
# Usage:
# - make
# - make clean
#

.PHONY: build
build:
	ocamlc -c Debug1.ml
	@echo "=== shows the correct type alias ==="
	-ocamlc -c Debug2.ml
	echo
	@echo "=== shows the wrong type alias ==="
	-ocamlc -c -short-paths Debug2.ml
	echo
	@echo "=== shows the wrong type alias ==="
	-ocamlc -c -short-paths Debug3.ml

.PHONY: clean
clean:
	rm -f *.cm[io]
