### Custom Repository including prebuilt aur packages

#### packages:
```
abrus-gtk-theme-git
chromium-widevine
geany-themes-git
pamac-classic
protonvpn-cli-ng
protonvpn-linux-gui
qtwebflix-git
repoctl
repose-git
tilix-themes-git
vdhcoapp
```

#### manage with repoctl:

`
$ repoctl new config </path/to/aur-pkg-repo>/aur-pkg-repo.db.tar.xz && repoctl update
`  

#### remove db's and redownload them:
`
sudo rm -r /var/lib/pacman/* 
`  
`  
sudo pacman -Syy  
`   

#### edit /etc/pacman.conf:

```
[aur-pkg-repo]
SigLevel = Optional TrustAll 
Include = /etc/pacman.d/aur-pkg-repo
```

#### create /etc/pacman.d/aur-pkg-repo

```
Server = https://github.com/3xitLight/aur-pkg-repo/releases/download/aur-pkg-repo/
Server = http://0.0.0.0:8080
```
