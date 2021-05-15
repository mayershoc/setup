# CUDA Installation

CUDA can be easily installed using Nvidia's official PPA.
Use the script to setup the PPA
`bash setup_ppa.sh`

The script does not install CUDA for you, as depending on your use case you might want to install a particular version.
Generally, Nvidia differentiates between toolkit, samples and drivers and provide different packages:
- `cuda` packages contain the toolkit, samples, drivers and documentation 
- `cuda-toolkit` installs the toolkit, samples and documentation, **but** keeps your drivers

To install, simply use apt:
`sudo apt install cuda` or
`sudo apt install cuda-toolkit`

Or a specific version:
`sudo apt install cuda-11-0`


