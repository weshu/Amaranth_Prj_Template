# Amaranth HDL Base Project
This respository is a base project to help AmaranthHDL users set-up project in a minite.
Reference:
 - [SpinalTemplateSbt](https://github.com/SpinalHDL/SpinalTemplateSbt)
 - [Amaranth-stdio](https://github.com/amaranth-lang/amaranth-stdio)

# if you want to create a new project from this template
## Change project name
A project template for Amaranth HDL

## Run unit tests
in the project root folder, run:
```sh
make unittest
```
## Generate Verilog
in the project root folder, run:
```sh
make verilog
make verilog-dbg # verilog with src info
```
## Docs Generation
[Sphinx](https://www.sphinx-doc.org/en/master/index.html) is used for automatic doc generation.

### conf. py custmization
 - change the project information: project, copyright, author, and release
 - change the "html_theme": alabaster/classic/sphinxdoc/agogo/traditional/nature/pyramid/bizstyle
### makefile modification
 - change the "./hw/project_name" at apidoc
### generate new doc
in the project root folder, run:
```sh
make docs
```
