#!/bin/bash
#Copyright (c) 2018 Divested Computing, Inc.
#License: GPLv3

if [[ $EUID -ne 0 ]]; then echo 'This script needs to be run as root!'; exit 1; fi;

if [ -f /etc/centos-release ]; then yum install epel-release; fi;

yum install --skip-broken irqbalance openssh nano htop wget screen p7zip pixz lm_sensors ripgrep zram java-1.8.0-openjdk @multimedia aspell aspell-en dconf-editor mesa-dri-drivers libva-utils gstreamer1-vaapi libva-intel-driver libva-intel-hybrid-driver adobe-source-code-pro-fonts mozilla-fira-mono-fonts mozilla-fira-sans-fonts audacity lynis checksec spectre-meltdown-checker testdisk smartmontools parted mediawriter gnome-multi-writer btrfs-progs dosfstools f2fs-tools mtools ntfs-3g ntfsprogs udftools xfsprogs libreoffice meld scribus gnucash backintime-qt4 ecryptfs-utils ecryptfs-simple encfs quadrapassel gnome-mines gnome-chess gnome-sudoku aisleriot gimp gimpfx-foundry inkscape darktable pitivi jpegoptim optipng firefox mozilla-https-everywhere mozilla-ublock-origin liferea lollypop youtube-dl keepassxc pwgen diceware u2f-hidraw-policy ssss bleachbit srm wipe scrub clamav clamav-data-empty clamav-update clamtk unhide firejail firewall-config setroubleshoot tor torsocks obfs4 onionshare torbrowser-launcher transmission whois mtr stress iotop wavemon pv tree iperf3 bmon powertop ncdu vrms-rpm;
