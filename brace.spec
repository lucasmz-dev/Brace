Name: brace
Version: 20201211
Release: 6
Summary: Increases privacy/security through various configs.
License: GPLv3+
BuildArch: noarch
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root
%define _binary_payload w3T.xzdio

%description
- Adds many helper scripts: brace-installer, brace-remover, brace-supplemental-changes
- GNOME/Cinnamon/MATE: change default settings
- Firefox: change default settings, credit @arkenfox + @pyllyukko, license MIT
- Chromium: change default settings
- NetworkManager: disable connectivity checking
- Networkmanager: enable MAC address randomization
- NetworkManager: enable IPv6 privacy extensions
- kernel: restrict dmesg and ptrace
- kernel: blacklist modules that provide direct memory access externally
- kernel: blacklist modules that allow for USB networking
- profile: adds helper aliases
- kernel: increases wi-fi performance for b43 and iwlwifi

%post
if [ -f /usr/bin/dconf ]; then dconf update; fi;
echo "Please pepper your /etc/fstab with discard,noatime,nodev,nosuid,noexec";

%postun
if [ -f /usr/bin/dconf ]; then dconf update; fi;

%install
install -Dm644 brace/etc/dconf/db/local.d/00-brace-cinnamon %{buildroot}/etc/dconf/db/local.d/00-brace-cinnamon;
install -Dm644 brace/etc/dconf/db/local.d/00-brace-extra %{buildroot}/etc/dconf/db/local.d/00-brace-extra;
install -Dm644 brace/etc/dconf/db/local.d/00-brace-gnome %{buildroot}/etc/dconf/db/local.d/00-brace-gnome;
install -Dm644 brace/etc/dconf/db/local.d/00-brace-mate %{buildroot}/etc/dconf/db/local.d/00-brace-mate;
install -Dm644 brace/etc/dconf/db/local.d/00-brace-pantheon %{buildroot}/etc/dconf/db/local.d/00-brace-pantheon;
install -Dm644 brace/etc/dconf/profile/user-full %{buildroot}/etc/dconf/profile/user;
install -Dm755 brace/etc/profile.d/brace-env-overrides.sh %{buildroot}/etc/profile.d/brace-env-overrides.sh;
install -Dm755 brace/etc/profile.d/brace-helpers.sh %{buildroot}/etc/profile.d/brace-helpers.sh;
mkdir -p %{buildroot}/usr/lib64/firefox/browser/defaults/preferences;
install -Dm644 brace/usr/lib/firefox/browser/defaults/preferences/userjs-*.js %{buildroot}/usr/lib64/firefox/browser/defaults/preferences/;
install -Dm644 brace/usr/lib/firefox/distribution/policies.json %{buildroot}/usr/lib64/firefox/distribution/policies.json;
mkdir -p %{buildroot}/usr/lib64/thunderbird/defaults/pref;
install -Dm644 brace/usr/lib/firefox/browser/defaults/preferences/userjs-*.js %{buildroot}/usr/lib64/thunderbird/defaults/pref/;
install -Dm644 brace/etc/chromium/policies/managed/brace.json %{buildroot}/etc/chromium/policies/managed/brace.json;
install -Dm644 brace/etc/chromium/policies/managed/brace.json %{buildroot}/etc/opt/chrome/policies/managed/brace.json;
install -Dm644 brace/usr/lib/modprobe.d/blacklist-dma.conf %{buildroot}/usr/lib/modprobe.d/blacklist-dma.conf;
install -Dm644 brace/usr/lib/modprobe.d/blacklist-usbnet.conf %{buildroot}/usr/lib/modprobe.d/blacklist-usbnet.conf;
install -Dm644 brace/usr/lib/modprobe.d/wireless-perf.conf %{buildroot}/usr/lib/modprobe.d/wireless-perf.conf;
install -Dm644 brace/usr/lib/NetworkManager/conf.d/30-nm-privacy.conf %{buildroot}/usr/lib/NetworkManager/conf.d/30-nm-privacy.conf;
install -Dm644 brace/usr/lib/sysctl.d/60-restrict.conf %{buildroot}/usr/lib/sysctl.d/60-restrict.conf;
install -Dm644 brace/usr/lib/systemd/user/restic-backup@.service %{buildroot}/usr/lib/systemd/user/restic-backup@.service;
install -Dm644 brace/usr/lib/systemd/user/restic-backup@.timer %{buildroot}/usr/lib/systemd/user/restic-backup@.timer;
install -Dm755 brace/usr/bin/brace-supplemental-changes %{buildroot}/usr/bin/brace-supplemental-changes;
install -Dm755 brace/usr/sbin/brace-fedora-enable-auto-updates %{buildroot}/usr/sbin/brace-enable-auto-updates;
install -Dm755 brace/usr/sbin/brace-fedora-enable-rpmfusion %{buildroot}/usr/sbin/brace-enable-rpmfusion;
install -Dm755 brace/usr/sbin/brace-fedora-remover %{buildroot}/usr/sbin/brace-remover;
install -Dm755 brace/usr/sbin/brace-fedora-update-system %{buildroot}/usr/sbin/brace-update-system;
install -Dm755 brace/usr/sbin/brace-installer %{buildroot}/usr/sbin/brace-installer;
install -Dm755 brace/usr/sbin/brace-rpm-verify %{buildroot}/usr/sbin/brace-rpm-verify;

%files
/etc
/usr
