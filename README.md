### Custom Repository including prebuilt aur packages

#### packages:
```
3xitarch-calamares-config
3xitlight-desktop
3xitlight-fonts
3xitlight-icons
abrus-gtk-theme-git
bcc
bcc-tools
calamares
chromium-widevine
ckbcomp
geany-themes-git
mkinitcpio-openswap
netactview
pamac-aur
pamac-classic
protonvpn-cli-ng
protonvpn-linux-gui
python-bcc
qtwebflix-git
repoctl
repose-git
rtl88xxau-aircrack-dkms-git
spotify
tilix-themes-git
vdhcoapp
yay
zenmap

```

#### manage with repoctl:

`
$ repoctl new config </path/to/aur-pkg-repo>/aur-pkg-repo.db.tar.xz && repoctl update
`  

#### remove db's and redownload them:
`
sudo rm -r /var/lib/pacman/sync/* 
`  
`  
sudo pacman -Syy  
`   

#### edit /etc/pacman.conf:

```
[aur-pkg-repo]
SigLevel = Optional TrustAll 
Server = https://github.com/3xitLight/aur-pkg-repo/releases/download/aur-pkg-repo/
# Include = /etc/pacman.d/aur-pkg-repo-list
```
