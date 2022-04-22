# Miriad and Duchamp Installation Script

## Description
This is a bash script intended to install ATNF's Miriad radio interferometry data reduction package (https://www.atnf.csiro.au/computing/software/miriad/), Duchamp source finder (https://www.atnf.csiro.au/people/Matthew.Whiting/Duchamp/), and Karma (https://www.atnf.csiro.au/computing/software/karma/) along with their pre-requisites.  

## Notes
* Sudo access is required as the softwares will be installed in the `/usr/local` folder. Therefore, this is only suitable for personal machines. You may try to modify the INSTALLDIR variable, but do so at your own risk.
* Internet access is required to download the source codes. 
* The script can be placed anywhere in the machine, and source codes will be downloaded in the same folder. 
* The script is made for Ubuntu 20.04 64-bit. 
* The files ending with `_old` are previous versions of the installer; Karma is installed separate from the other softwares (using the `karma_old.sh`. 

## Softwares included in the script:
* Miriad https://www.atnf.csiro.au/computing/software/miriad/
* Duchamp https://www.atnf.csiro.au/people/Matthew.Whiting/Duchamp/
* RPFITS https://www.atnf.csiro.au/computing/software/rpfits.html
* WCSLIB https://www.atnf.csiro.au/people/mcalabre/WCS/wcslib/
* CFITSIO https://heasarc.gsfc.nasa.gov/fitsio/
* Karma https://www.atnf.csiro.au/computing/software/karma/
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

## Steps:
1. Download and unpack the archive into a directory of choice: 
   ```
   unzip Miriad-Duchamp-Installer-[version].zip
   ```
   or 
   ```
   tar -xzvf Miriad-Duchamp-Installer-[version].tar.gz
   ```
   where `[version]` is the downloaded version of the installer. This will unpack the files into a directory called `Miriad-Duchamp-Installer-[version]`.
2. Enter the directory using
   ```
   cd Miriad-Duchamp-Installer-[version]
   ```
3. Make the installer script an executable using
   ```
   chmod u+x install.sh
   ```
4. Run the script using
   ```
   ./install.sh
   ```
   Note: You may need to enter your password here for sudo privileges.
5. If there are no errors and you see the message 
   ``` 
   "Installation complete. Run source ~/.profile or restart to use Miriad."
   ```
   the installation is successful. Run `source ~/.profile` or restart the machine. 
6. To test the installation, open another terminal and run `miriad` and you should see 
   ```
   Miriad shell version 1.5, 2007/06/12

   miriad%
   ```
   and to test Duchamp, run `Duchamp` and you should see
   ```
   Usage: Duchamp [OPTION] [FILE]
   Duchamp is an object finder for spectral-line FITS cubes.

     -p FILE      Read in parameters from FILE, including FITS image location.
     -f FILE      Use default parameters with imageFile=FILE
     -t THRESH    Sets the detection threshold to THRESH, overriding that given by the parameter file.
     -x           Do not use X-windows PGPLOT output
                  (equivalent to setting flagXOutput=false -- overrides the parameter file)

     -v           Return version number and exit
     -h           Display this help information and exit
   ```

## Disclaimer:
I do not own any of the softwares involved in the script. The copyrights and licenses of every software involved can be found at their respective homepages. This is written just to ease the installation process of these softwares.
