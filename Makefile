# util for the project
.PHONY init-folders unittest verilog verilog-dbg apidoc html docs clean-docs

# Run ONCE
# Make empty folders:
init-folders:
	mkdir -p ./hw/gen
	mkdir -p ./tests/waveform
	mkdir -p ./docs/source/_static

# Tests
unittest:
	python -m unittest discover -t . -s tests -v

# Verilog gen
verilog:
	python -m hw.project_name.Top --no-src

verilog-dbg:
	python -m hw.project_name.Top 

# Doc gen
apidoc:
	sphinx-apidoc -f -e -o ./docs/source/apidoc ./hw/

html:
	$(MAKE) -C ./docs/ html

docs: apidoc html

clean-docs:
	$(MAKE) -C ./docs/ clean
