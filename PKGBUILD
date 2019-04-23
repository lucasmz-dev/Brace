# Maintainer: Tad <tad@spotco.us>
pkgname=brace
pkgver=3.0
pkgrel=7
pkgdesc="Increases privacy/security through various configs. Firefox hardening credit: @pyllyukko"
arch=('any')
license=('GPLv3')
optdepends=('arch-audit: check for insecure packages'
	'scrub: erase drive freespace'
	'firejail: sandbox programs'
	'linux-hardened: harden against kernel exploits'
	'rkhunter: scan for rootkits'
	'ufw: seal your ports'
	'firefox: browser')
source=('00-brace-gnome'
	'00-brace-mate'
	'00-brace-cinnamon'
	'00-brace-extra'
	'21-disable-connectivity-check.conf'
	'30-mac-randomization.conf'
	'60-restrict.conf'
	'blacklist-dma.conf'
	'blacklist-usbnet.conf'
	'brace-supplemental-changes.sh'
	'brace-arch-installer.sh'
	'brace-flathub-installer.sh'
	'iwlwifi.conf'
	'brace-helpers.sh'
	'userjs-brace.js'
	'userjs-brace-perf.js'
	'userjs-ghacks.js'
	'userjs-pyllyukko.js')
sha512sums=('72d4c3aabcc29d705b85a6591029d860ba1e22f52f2150710bf111770392a3c70162451722f479ce9c84f917ffee5151dc7b959a55a84a2d5cffa043383b502f'
            'aca0e3bbbe7494dcd5b83b9bf530d3e9176bef8d1bb0213805f4da84775213557e60943c475e9aecf44a33e6615f24a47f81b692ddf4b2c01c39a7c085c85525'
            '24616a6133608301d3c4016f2667bdf6982ab3f99ac231b5588bcb220545d992e3fcc97cceafd674f7b4ba00d5747f3f4d25da54130a1ff817d752ba6b93bf98'
            '52d53ba383393dea496d58b739cdbef44b48d2f11ba85b54448e4e765fa0feedbf70be5b85e211c5c28db9613abbecbfb0135cc5b79f7b4087d7507b6d026d81'
            '8ec47524685a59ed1ca45d5ba5334248cc505c07d71f1340d77a20e96e647b32c7a10cac1f1a2e32b0477a53c7ce14c57e839057b2b4fe7191932001c5679364'
            'cd03db723b789e9084cc2474edb3bf3f878cc5a751b437f69dd6f06a8015070e7c3f6750b581c15524e869f9fd8dd7db7eff9dad0650930e04387f5a36b4510e'
            '8c59967722d9ca575b72951d7433072766b7529b5208348e0781bdae52f4e736de7b28d360f696a56e352b518d4829f5fc618a1ed00d770c180dc8d6851910a7'
            'ba57603a85b3e25f8146269cadbb4953b6b3d66a25e251b1478fc85704c884eb56ef8b1cd17a547631d5778ffab37fd212c9cf0eb0525e4c46b9c7418836146a'
            '7f7d833f4b1437a99e0f30e6dd3b474ac75a52f830864f88b2d1337845daa59e46b4558437568067a7040c7d6bb72bdecc5490fedb71ac8049dccafb334bdda1'
            '1957069b9e739f9577f4db135f1dc64f2d65aaf5d74b70423f7983ace1f806809e39356bb40ec4c27e80db66b645c1a85ff73b35d9931b391a0cdb5402301fa2'
            'f20c6e23095388a1a503e53b91236f5a33f7c3d705ef764bd7359c382c99d4529e4b351549ca46a5ee17ba3e55e092e0c5e1bb8bcf87f26c4f17e080030953ef'
            'f66346ed92358fd67ec134c71017a49e73c61efac1e526eafa04527365b662215ac016b117237b657ef0e8d5cf8e3ba14c5b767641ab92e53b471caf664ece55'
            'c07d4f5d591a07db530deb77065e488e788fd964c081c2859cee07cb0820c69ab8236b8713425c77b47a75435907643cd9a021719f7389c09b20787df1b0860b'
            '234d146b76e1ca572d856ba837848842ceced658a547ac058fd9bbcf5f04ac696756608339209b20b97956f80814b9393207dffddc109abda15ca6f98bb0e756'
            '26ee849b74c6f871e651531fd25dc4932901ff513a86d4c01f6a66e8ade2d8038171229087b46cb486a867e23f471f79e4ddb597cb11e5b5669d83b25a0a906a'
            'a0999164d4031a04ce10db848ea944b2db734f08dcf3554bfb6d651305cde95f852b46e3aea2cc4f1468a0a6c07c06623f0e925d025fdee848f122f412ee951a'
            '8dcb94adf166a0631472bc63bf69231eec33c43cf993d0075f8f87b47fc714255fa6b6eb09c7be660e4e41a5f15241d01b78e84f0a79707e3724a42ebf878ec1'
            'ed402031d5c7fa33d86fb6c11a2972a66277f137006910be28c71f600a2daf82a5fa34c4966cc848ef7afa4ce9929670ebc56f3a14520366f7135fdb8eb18437')
install=brace.install

package() {
  cd "$srcdir"
  install -Dm644 00-brace-gnome "$pkgdir"/etc/dconf/db/local.d/00-brace-gnome
  install -Dm644 00-brace-mate "$pkgdir"/etc/dconf/db/local.d/00-brace-mate
  install -Dm644 00-brace-cinnamon "$pkgdir"/etc/dconf/db/local.d/00-brace-cinnamon
  install -Dm644 00-brace-extra "$pkgdir"/etc/dconf/db/local.d/00-brace-extra
  install -Dm755 brace-helpers.sh "$pkgdir"/etc/profile.d/brace-helpers.sh
  install -Dm755 brace-supplemental-changes.sh "$pkgdir"/usr/bin/brace-supplemental-changes
  install -Dm755 brace-arch-installer.sh "$pkgdir"/usr/bin/brace-installer
  install -Dm755 brace-flathub-installer.sh "$pkgdir"/usr/bin/brace-installer-flathub
  install -Dm644 blacklist-dma.conf "$pkgdir"/usr/lib/modprobe.d/blacklist-dma.conf
  install -Dm644 blacklist-usbnet.conf "$pkgdir"/usr/lib/modprobe.d/blacklist-usbnet.conf
  install -Dm644 iwlwifi.conf "$pkgdir"/usr/lib/modprobe.d/iwlwifi.conf
  install -Dm644 21-disable-connectivity-check.conf "$pkgdir"/usr/lib/NetworkManager/conf.d/21-disable-connectivity-check.conf
  install -Dm644 30-mac-randomization.conf "$pkgdir"/usr/lib/NetworkManager/conf.d/30-mac-randomization.conf
  install -Dm644 60-restrict.conf "$pkgdir"/usr/lib/sysctl.d/60-restrict.conf
  mkdir -p "$pkgdir"/usr/lib/firefox/browser/defaults/preferences/
  install -Dm644 userjs-*.js "$pkgdir"/usr/lib/firefox/browser/defaults/preferences/
  mkdir -p "$pkgdir"/usr/lib/thunderbird/defaults/preferences/
  install -Dm644 userjs-*.js "$pkgdir"/usr/lib/thunderbird/defaults/preferences/
}
