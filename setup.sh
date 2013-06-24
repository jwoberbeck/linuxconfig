echo "cloning fresh copy of the repo..."
apt-get install git
cd 
git clone https://github.com/jwoberbeck/linuxconfig.git
echo "Setting up Solarized colorscheme for Gnome Terminal"
mv linuxconfig/.dircolors .
eval `dircolors ~/.dircolors`
mv linuxconfig/set_light.sh
./set_light.sh
echo "You're going to need vim online"
mv linuxconfig/.vim ~
mv linuxconfig/.vimrc ~
echo "Let's make you a bin directory"
EHOME="$PWD"
mkdir bin
echo "PATH="$EHOME"/bin:\$PATH" >> ~/.bashrc
echo "Now let's get these set up for root"
cd /root
cp -r $EHOME/.dircolors $EHOME/set_light.sh $EHOME/.vim $EHOME/.vimrc .
eval `dircolors /root/.dircolors`
./set_light.sh
echo "PATH="$EHOME"/bin:\$PATH" >> /root/.bashrc
rm set_light.sh
cd $EHOME
rm set_light.sh
echo "That's the basics... now let's shoot for xmonad"
apt-get install ghc6
apt-get install cabal-install
apt-get install dmenu
cabal install xmonad
cabal install xmonad-contrib
cabal install xmobar
mv linuxconfig/.xmonad .
mv linuxconfig/.xmobarrc .
echo "That should be everything...enjoy!"


