# Description
This is a bash script intended to install ATNF's Miriad radio interferometry data reduction package (https://www.atnf.csiro.au/computing/software/miriad/) and Duchamp source finder (https://www.atnf.csiro.au/people/Matthew.Whiting/Duchamp/), along with their pre-requisites.  

# Notes
* Sudo access is required as the softwares will be installed in the `/usr/local` folder. Therefore, this is only suitable for personal machines. You may try to modify the INSTALLDIR variable, but do so at your own risk.
* Internet access is required to download the source codes. 
* The script can be placed anywhere in the machine, and source codes will be downloaded in the same folder. 
* The script is made for Ubuntu 20.04 64-bit. 

# Softwares included in the script:
* Miriad https://www.atnf.csiro.au/computing/software/miriad/
* Duchamp https://www.atnf.csiro.au/people/Matthew.Whiting/Duchamp/
* RPFITS https://www.atnf.csiro.au/computing/software/rpfits.html
* WCSLIB https://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/
* Karma https://www.atnf.csiro.au/computing/software/karma/
* CFITSIO https://heasarc.gsfc.nasa.gov/fitsio/
* Other modules: 
  * `pgplot5`
  * `gfortran`
  * `autoconf`
  * `git`
  * `csh`
  * `xorg`
  * `openbox`
  * `libxaw7`
  * `libreadline`
  * `build-essential`
  * `zlib1g`

# Steps:
1. Download the `install.sh`
2. Open the terminal in the folder containing the file and run `chmod u+x install.sh`
3. Run the script using `./install.sh`

# Disclaimer:
I do not own any of the softwares involved in the script. This is written just to ease the installation process of these softwares.
