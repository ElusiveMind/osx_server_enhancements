# OS X Web Server/PHP enhancement
# PHP 5.5.29 (OS X 10.11.1- El Capitain)

Note: LibPNG has had PNG support re-added to it's general release, however with mcrypt still missing and a couple of other packages that I use, I am going to continue to support these enhancements until such time as they are included.  

Also of note is that to install this you will need to disable System Integrity Protection in El Capitain. This is a new feature that prevents the modification of system paths. To do this, boot to your restore image and go to the Utilities menu. Select the terminal option and on the command line type:

csrutil disable

Then you will need to re-start and you should be able to install without further issue.

There are a lot of opinions with regard to how to get various types of open source web server and applications programming software working with OS X. A lot of these involve installing a package management service such as Homebrew or MacPorts. While this may be the way some folks wish to go, my preference is go a more holistic route that involves fewer dependencies.

This involves installing things that need to be installed an nothing more. As such, I’ve learned to extend things on the base version of PHP that come with Mac OS X Server (El Capitain) without the need of package managing services.

Building additional components for your OS X web server can be pretty simple if you are comfortable around a command line and following a few instructions. This involves just a few more commands than it would take to run a package manager but gives you a lot more control while at the same time understanding a bit more about how your software works.

In my example, I need to accomplish a few basic tasks:  

Add the PHP multi-threaded pcntl extension to the command line for processing command line scripts properly programmed to use multi-threaded processes.  

Make mcrypt work with the installed PHP (VERY important and almost a deal breaker to running a secure web server on Mac OS X).  

To do all of this, we have to over-write the base install of PHP on OS X. I am starting from a base install of Mac OS 10.11.1 (El Captain) running OS X Server version 5. The provided version of PHP with this set up is 5.5.29.. Here are the software packages and versions I have downloaded to accomplish these tasks:

php-5.5.29  
libtool-2.4.6  
icu4c-4-8-1  
autoconf-2.69  
jpeg-6b  
libgd-GD-2_0_33  
libmcrypt-2.5.8  
libpng-1-6-16  
freetype-2.5.5  
ffmpeg-2.5.3  
yasm-1.3.0  
openssl-0.9.8zg
  
You will need to be sure you have Apple's Command Line Tools installed. This does come with the XCode app, but this package is not yet built against those, but rather the stand alone command line tools package available by either downloading from the Developers portal or by dropping to the command line and typing 'git' and hitting return (this will try to run git, triggering an install of the command line tools for OS X).

UNFORTUNATELY, IT IS NOT POSSIBLE TO BUILD PHP AGAINST XCODE'S STAND ALONE COMMAND LINE TOOLS AS IT DOES NOT INCLUDE APACHE'S SHARED LIBRARIES. ONLY THE COMMAND LINE TOOLS DOES. If you have an Apple developer account, download the Command Line tools for XCode 7. If not, use the link below:

https://www.dropbox.com/s/vm3jgmwjb25sdpe/Command_Line_Tools_OS_X_10.11_for_Xcode_7.1.dmg?dl=0

This repository provides these packages and an installer. The goal is to update the GD extension inside of PHP to support jpeg, gif, and png images along with freetype as a shared object (extension) to PHP as opposed to being compiled. It is also to provide mcrypt which is not provided by default as well as the pcntl extension for multi-threading. Additional modules could be added to this if desired, but these three were the ones most mission critical to my rationale behind creating this repository.

The internationalization library and extension icu4c / intl were also recently added to assist in Magento 2 development.

In addition to compiling these resources, it will create a new php.ini file to load these extensions.

These extensions were designed to be used in conjunction with OS X Server but that is not require. Notably absent from this is an installer for MySQL which can be obtained and installed from mysql.org directly and installed.

For more information on this repository, please visit:

http://www.michaelbagnall.com/blogs/php-gd-fixing-your-php-server-mac-os-x-without-homebrewmacports
