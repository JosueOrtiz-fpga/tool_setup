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

## For Windows Users
There are a few options for adding ```make``` on Windows.

I suggest the following:
1. Install Git Bash for Windows
2. Follow the steps [here](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058#make "@embed") to add ```make``` to Git Bash
