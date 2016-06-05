# OS X Web Server/PHP enhancement
######By Michael R. Bagnall @mrbagnall17 - @flyingflip

Note: LibPNG has had PNG support re-added to it's general release, however with mcrypt still missing and a couple of other packages that I use, I am going to continue to support these enhancements until such time as they are included.  

Also of note is that to install this you will need to disable System Integrity Protection in El Capitain. Note that this does not apply if you are using OS X Yoesmite. This is a new feature that prevents the modification of system paths. To do this, boot to your restore image and go to the Utilities menu. Select the terminal option and on the command line type:

csrutil disable

Then you will need to re-start and you should be able to install without further issue.

I have completely re-designed the install process to give you options on the PHP versions you wish to install so that everything is in a single master branch.

You can install any of the stock PHP versions that come with the various versions of OS X plus some optional packages. You can also install PHP 7. The exact version will be updated over time.

Here are the versions of PHP available:

PHP 5.5.27 - Yoesmite 10.5.5 / El Capitain 10.11.0  
PHP 5.5.29 - Yoesmite 10.5.5 / El Capitain 10.11.1  
PHP 5.5.30 - El Capitain 10.11.2  
PHP 5.5.31 - El Capitain 10.11.4  
PHP 5.5.34 - El Capitain 10.11.5  
PHP 7.0.7 - experimental  
  
You can also install the following optional packages:

ffmpeg-2.8.5  
icu4c-4-8-1 (includes yasm-1-3-0.tgz)   

Other items installed that are not optional and are critical:

openssl  
bison
re2c
autoconf  
libtool  
freetype  
jpegsrc  
libgd  
libmcrypt  
libpng   

And the PHP extensions that utilize these libraries.

You will need to be sure you have Apple's Command Line Tools installed. This does come with the XCode app, but this package is not yet built against those, but rather the stand alone command line tools package available by either downloading from the Developers portal or by dropping to the command line and typing 'git' and hitting return (this will try to run git, triggering an install of the command line tools for OS X).

UNFORTUNATELY, IT IS NOT POSSIBLE TO BUILD PHP AGAINST STAND-ALONE XCODE AS IT DOES NOT INCLUDE APACHE'S SHARED LIBRARIES. ONLY THE COMMAND LINE TOOLS DOES. To install the correct command-line tools, go to a terminal window and run:

xcode-select --install  
  
The internationalization library and extension icu4c / intl were also recently added to assist in Magento 2 development.

In addition to compiling these resources, it will create a new php.ini file to load these extensions.

These extensions were designed to be used in conjunction with OS X Server but that is not required. Notably absent from this is an installer for MySQL which can be obtained and installed from mysql.org directly and installed.

