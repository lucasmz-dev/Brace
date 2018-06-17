#!/bin/bash
#Copyright (c) 2015-2018 Divested Computing, Inc.
#License: GPLv3
#Automatically generated! Please edit with care.

if [[ $EUID -ne 0 ]]; then echo 'This script needs to be run as root!'; exit 1; fi;

coloroff='\e[0m';
black='\e[0;30m';
blue='\e[0;34m';
cyan='\e[0;36m';
green='\e[0;32m';
purple='\e[0;35m';
red='\e[0;31m';
white='\e[0;37m';
yellow='\e[0;33m';
infoColor=${green};
questionColor=${yellow};
outputColor=${yellow};

if [ -f /etc/centos-release ]; then yum install epel-release; fi;

echo -e ${questionColor}Do you want packages from the Core category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken irqbalance nano htop screen p7zip pixz lm_sensors parallel screenfetch;
			break;;
		No )
			yum remove irqbalance nano htop screen p7zip pixz lm_sensors parallel screenfetch;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Frameworks category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken java-1.8.0-openjdk;
			break;;
		No )
			yum remove java-1.8.0-openjdk;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Base category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken @multimedia aspell aspell-en gnome-terminal-nautilus gnome-tweak-tool dconf-editor numix-icon-theme-circle seahorse;
			break;;
		No )
			yum remove @multimedia aspell aspell-en gnome-terminal-nautilus gnome-tweak-tool dconf-editor numix-icon-theme-circle seahorse;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the HW Compute Acceleration category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken clinfo mesa-libOpenCL beignet pocl;
			break;;
		No )
			yum remove clinfo mesa-libOpenCL beignet pocl;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the HW Video Acceleration category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken libva-utils vdpauinfo mesa-dri-drivers libva-intel-driver libvdpau-va-gl gstreamer1-vaapi;
			break;;
		No )
			yum remove libva-utils vdpauinfo mesa-dri-drivers libva-intel-driver libvdpau-va-gl gstreamer1-vaapi;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Fonts category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken adobe-source-code-pro-fonts mozilla-fira-mono-fonts mozilla-fira-sans-fonts google-droid-sans-fonts google-droid-sans-mono-fonts google-droid-serif-fonts;
			break;;
		No )
			yum remove adobe-source-code-pro-fonts mozilla-fira-mono-fonts mozilla-fira-sans-fonts google-droid-sans-fonts google-droid-sans-mono-fonts google-droid-serif-fonts;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Audio Manipulation category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken audacity;
			break;;
		No )
			yum remove audacity;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Audit category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken lynis checksec;
			break;;
		No )
			yum remove lynis checksec;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Backup category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken borgbackup;
			break;;
		No )
			yum remove borgbackup;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Communication category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken evolution;
			break;;
		No )
			yum remove evolution;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Communication Realtime category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken polari mumble;
			break;;
		No )
			yum remove polari mumble;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Development category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken java-1.8.0-openjdk-devel gitg proguard bless sqlitebrowser fedpkg @development-tools;
			break;;
		No )
			yum remove java-1.8.0-openjdk-devel gitg proguard bless sqlitebrowser fedpkg @development-tools;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Development Android category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken android-tools;
			break;;
		No )
			yum remove android-tools;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Disks category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken testdisk smartmontools mediawriter hdparm;
			break;;
		No )
			yum remove testdisk smartmontools mediawriter hdparm;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Documents category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken libreoffice meld pdfmod;
			break;;
		No )
			yum remove libreoffice meld pdfmod;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the File Encryption category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken ecryptfs-utils encfs;
			break;;
		No )
			yum remove ecryptfs-utils encfs;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the File Syncing category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken syncthing;
			break;;
		No )
			yum remove syncthing;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Games - Tiny category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken quadrapassel gnome-2048 gnome-mines aisleriot;
			break;;
		No )
			yum remove quadrapassel gnome-2048 gnome-mines aisleriot;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Hacking category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken aircrack-ng nmap wireshark-gtk;
			break;;
		No )
			yum remove aircrack-ng nmap wireshark-gtk;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Image Manipulation category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken gimp inkscape darktable pitivi jpegoptim optipng;
			break;;
		No )
			yum remove gimp inkscape darktable pitivi jpegoptim optipng;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Internet category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken firefox mozilla-https-everywhere mozilla-ublock-origin liferea;
			break;;
		No )
			yum remove firefox mozilla-https-everywhere mozilla-ublock-origin liferea;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Maps category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken viking;
			break;;
		No )
			yum remove viking;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Media Management category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken picard soundconverter sound-juicer;
			break;;
		No )
			yum remove picard soundconverter sound-juicer;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Media Management Books category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken calibre;
			break;;
		No )
			yum remove calibre;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Media category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken lollypop youtube-dl;
			break;;
		No )
			yum remove lollypop youtube-dl;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Passwords category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken keepassxc pwgen;
			break;;
		No )
			yum remove keepassxc pwgen;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Privacy category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken bleachbit srm;
			break;;
		No )
			yum remove bleachbit srm;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Security category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken clamav clamav-data-empty clamav-update clamtk unhide chkrootkit firewall-config;
			break;;
		No )
			yum remove clamav clamav-data-empty clamav-update clamtk unhide chkrootkit firewall-config;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Tor category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken tor torsocks tor-arm onionshare torbrowser-launcher;
			break;;
		No )
			yum remove tor torsocks tor-arm onionshare torbrowser-launcher;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Torrenting category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken transmission;
			break;;
		No )
			yum remove transmission;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Utility category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken whois mtr stress iotop wavemon tree pv iperf3 bmon powertop ncdu;
			break;;
		No )
			yum remove whois mtr stress iotop wavemon tree pv iperf3 bmon powertop ncdu;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Virtualization category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken virt-manager;
			break;;
		No )
			yum remove virt-manager;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Wine category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken winetricks wine;
			break;;
		No )
			yum remove winetricks wine;
			break;;
		Skip )
			break;;
	esac;
done;

echo -e ${questionColor}Do you want packages from the Yubikey category?${coloroff};
select yns in "Yes" "No" "Skip"; do
	case $yns in
		Yes )
			yum install --skip-broken yubikey-personalization-gui;
			break;;
		No )
			yum remove yubikey-personalization-gui;
			break;;
		Skip )
			break;;
	esac;
done;

yum autoremove;