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
$ repoctl new config <[path/to/aur-pkg-repo]>/aur-pkg-repo.db.tar.xz && repoctl update
`

```
Repoctl helps manage local Pacman repositories, and acts in particular as
a supplement to the repo-add and repo-remove tools that come with Pacman.

If compiling and installing from AUR every time is not what you want,
or if you want to host your own repository, then repoctl might be for you.

Note that in all of these commands, the following terminology is used:

    pkgname: is the name of the package, e.g. pacman
    pkgfile: is the path to a package file, e.g. pacman-3.5.3-i686.pkg.tar.xz

Usage:
  repoctl [command]

Available Commands:
  add         copy and add packages to the repository
  down        download and extract tarballs from AUR
  help        Help about any command
  host        host repository on a network
  list        list packages that belong to the managed repository
  new         create a new repository or configuration file
  remove      remove and delete packages from the database
  reset       recreate repository database
  status      show pending changes and packages that can be upgraded
  update      update database in repository
  version     show version and date information

Flags:
  -b, --backup              backup obsolete files instead of deleting
  -B, --backup-dir string   backup directory relative to repository path (default "backup/")
      --color Colorizer     when to use color (auto|never|always) (default auto)
  -s, --columns             show items in columns rather than lines
      --debug               show unnecessary debugging information
  -h, --help                help for repoctl
  -q, --quiet               show minimal amount of information

Use "repoctl [command] --help" for more information about a command.
```

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
