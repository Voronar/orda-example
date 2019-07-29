build: js-build build-ml

build-ml:
	dune build @wi
	scp ../_build/default/wi/main.bc.js js/dist/main.bc.js

deps:
	opam install js_of_ocaml js_of_ocaml-ppx

js-deps:
	npm i --prefix js

js-dev:
	npm run --prefix js dev
js-build:
	npm run --prefix js build

clean:
	rm -r js/dist