# shortcut
Lay shotcut to go back to a directory quiclky

### Info

ZSH is much better in order to change $PATH variables so it would be recommended to use it

### Installation Instructions

#### If you are running on Windows :

Shortcut is not made to be used on Windows default cmd or powershell so you need to use a Windows Subsystem Linux or WSL

Here are the most used ones on windows :

|Platform   |Compatibility  | URL |
|------|-----|-----|
|Ubuntu WSL (in general) | :heavy_check_mark: | https://www.microsoft.com/fr-fr/p/ubuntu-2004-lts/9n6svws3rx71?cid=msft_web_chart&activetab=pivot:overviewtab |
|Fedora Remix for WSL | :heavy_check_mark: | https://www.microsoft.com/fr-fr/p/fedora-remix-for-wsl/9n6gdm4k2hnc?cid=msft_web_chart&activetab=pivot:overviewtab
|Kali WSL| :question: WIP | https://www.microsoft.com/fr-fr/p/kali-linux/9pkr34tncv07?activetab=pivot:overviewtab |
|Debian WSL | :question: WIP | https://www.microsoft.com/fr-fr/p/debian/9msvkqc78pk6#activetab=pivot:overviewtab|
|Cent OS WSL (not official) | :no_entry: | https://www.microsoft.com/fr-fr/p/centos81/9phx8cs2c9pc?activetab=pivot:overviewtab |

:question: It needs to be checked 

(WSL even if it should be running the same has Linux as some weird dependencies so I prefer to check it myself before giving an answer)

:no_entry: For now the only one that I found that was not working with is CentOS WSL
> Note that Cent OS WSL is not an offcial realease 

When you chosed and installed your Linux Subsystem check the shells that are accepted :

|Platform   |Compatibility  | INFO |
|------|-----|-----|
|bash | :heavy_check_mark: | bash is by default on every linux system and sub system|
|ksh  | :heavy_check_mark: | csh is basically an another version of bash (full bash compatibility) |
|zsh  | :heavy_check_mark: | It's considered as a better version of bash|
|csh  | :no_entry: (WIP) | I did not do anything yet about csh (more to come) | 

> Note : script was made originally on zsh 

#### Install git :

|Platform   |Command  |
|------|-----|
|Ubuntu && Ubuntu WSL| sudo apt install git|
|Fedora && Fedora WSL| sudo dnf install git|
|Arch && Arch WSL | yaourt -S git |
|Manjaro | sudo pacman -S git |
|Gentoo && Funtoo | sudo emerge --ask dev-vcs/git |
|Snap (Not an OS just a package manager)| sudo snap install git|

#### Install the app


```sh
git clone https://github.com/DregniSlovra/shortcut.git
```

```sh
cd shortcut
```

```sh
./installer
```

Now Follow the steps of the installer
