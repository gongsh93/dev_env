echo "Installing essential tools for ubuntu environment..."
sudo apt-get install vim -y
echo "Essential tools installation done."

echo "Google Chrome Installation"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb


echo "Installing GUI tools for ubuntu..."
sudo apt-get install gnome-tweaks -y
sudo apt-get install dconf-editor -y
gsettings set org.gnome.desktop.interface gtk-theme "HighContrastInverse"
gsettings set org.gnome.desktop.interface cursor-theme "redglass"
gsettings set org.gnome.desktop.interface cursor-size 50
gsettings set org.gnome.desktop.background picture-uri 'file:///home/gong/code/dev_env/RAZER_background.jpg'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.5
gsettings set org.gnome.desktop.session idle-delay 0

GNOME_TERMINAL_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}'`
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ background-color '#000000'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ foreground-color '#00EE00'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-transparent-background true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ background-transparency-percent 10
gsettings set org.gnome.nautilus.list-view use-tree-view true
echo "GUI tools installationg done."

