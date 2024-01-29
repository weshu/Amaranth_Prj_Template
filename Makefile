
# Tests
unittest:
	python -m unittest discover -t . -s tests -v

# Verilog gen
verilog:
	python -m hw.project_name.Top --no-src

verilog-dbg:
	python -m hw.project_name.Top 

# Doc gen related
apidoc:
	sphinx-apidoc -o ./docs/source ./hw/

html:
	$(MAKE) -C ./docs/ html

docs: apidoc html

clean-docs:
	$(MAKE) -C ./docs/ clean
