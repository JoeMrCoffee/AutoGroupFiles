# AutoGroupFiles
A simple BASH script for auto-sorting a lot of files into multiple subdirectories.

This is another script I wrote to help with a particular problem. I had too many family pictures and movies in a single folder/directory. That was causing a lot of lag when opening the images from the NAS. 

What this script does is to ask for which directory you want to sort, then how many files need should go into the subdirectories. 

*Installation*<br>
For those not familiar with BASH you can simply copy or clone the script and run it from a local directory - i.e. ./timeconverter.sh. BASH is the Bourne Again Shell and requires that shell to be installed, though changing the initial #!/bin/ may also work. In Windows, this should work if users have WSL (Windows Subsystem for Linux) running with BASH.

The script should as a minimum need execution rights to run so if you are the local user that would be chmod 500 timeconverter.sh.

To add this as a user PATH so that one may invoke it anytime simply copy the script to the /usr/local/bin or /home/(user)/.local/bin directory in Linux (distro dependent).

A sample of how it works is here:<br><br>
<div align='center'> <img  width='540px' src='https://1.bp.blogspot.com/-LWohbxJf4ck/YRYUTU8ZqdI/AAAAAAAAAIU/a9tE2iEUSa0nB9yL4Kh-8wBMZuhMRg9ygCLcBGAsYHQ/w640-h435/autosortoverview.gif'></div>
