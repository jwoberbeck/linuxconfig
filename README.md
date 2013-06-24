linuxconfig
===========

One-stop shop for automated script to get all the necessities working on a fresh linux installation  
Running setup.sh will perform the following actions:  
->install git (if you copy-pasted the script)  
->get Solarized colorscheme up in your terminal  
->boot up a basic .vimrc file, and solarized theme  
->create a ~/bin directory (to use for your Sublime Text 2 binary later), and add it to the path  
->Do the previous three steps for the root user as well  
->Install Haskell, DMenu, XMonad, and XMobar, along with config files  

You'll still need to do the following:  
->Change your airport code in ~/.xmobarrc for accurate weather  
->Change your OS info on the two marked lines in ~/.xmonad/xmonad.hs  
->Add your home directory for xmobar on the marked line with YOUR-HOME-DIRECTORY  
->Get your .Xsession or other startup sequence working to your liking  
->Use <feh --bg-scale 'your-image-path'> to set the background image  
->Install Sublime Text 2, and create an alias in ~/bin (I like sublime)  
--->Install Package Control, and use THAT to install DocBlockr  
->Install Chrome, Eclipse, gcc, etc.  

