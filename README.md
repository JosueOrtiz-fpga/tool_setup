# tool_setup
Example Setup of FPGA tools

To compile:
```
make compile
```

To run simulation:
```
make sim
```

To clean:
```
make clean
```

files.txt should contain relative paths to hdl files.
For compilation, the order in which files are listed matters

TOP_LEVEL variable in makefile should be the testbench module name
