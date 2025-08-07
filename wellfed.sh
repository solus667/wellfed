#!/bin/bash
sudo dnf in pv vim git curl nvim -y
clear
echo ""
echo ""
echo "++++Welcome $USER++++"|pv -qL 20
sleep 1
echo ""
echo "++Fedora time++"|pv -qL 20
sleep 1
clear
echo "+++Update+++"
echo ""
sudo dnf up --refresh -y
clear
echo ""
echo "+++FUSION......"|pv -qL 20
echo "......HAAAAAAAA+++"|pv -qL 20
sleep 1
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1

sudo dnf install rpmfusion-\*-appstream-data

sudo dnf swap ffmpeg-free ffmpeg --allowerasing

sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf install libva-intel-driver

sudo dnf up --refresh -y
echo ""
echo "fin"
sleep 5
clear
echo ""
echo "++++FLATPAK++++"|pv 
echo ""
sleep 1
sudo dnf in flatpak -y
sleep 1
echo ""
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "done"
sleep 5
clear
echo "++ Now you need to reboot and then you can use flatpak ++"
echo ""
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 5
clear
echo "bye"|pv -qL 20
sleep 1
reboot
