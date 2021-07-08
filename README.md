# stowed-dotfiles
Use 'make' and 'stow' to manage your dotfiles in logical packages

#dependencies
- make
- stow

The example uses a 'bash' and a 'git' package.

#instructions

- clone this to ~/dotfiles or where ever you want to keep your dotfiles
- by default the Makefile will install into ~/tmp/home for you to test, create this if you want to do testing

- cd into the dotfiles directory - where you are reading this README
- do 'make install'

- test your 'fake' home directory with
-- env -i TERM=xterm HOME=~/tmp/home /bin/bash --login

you should now be 're-homed' into ~/tmp/home with only your two packages, bash and git, installed

once you are done testing exit to your reular shell

- 'make uninstall' should clean up the installation in ~/tmp/home

customize the packages and add you own
