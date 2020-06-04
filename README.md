# shortcut
Lay shotcut to go back to a directory quiclky

### Info

ZSH is much better in order to change $PATH variables so it would be recommended to use it

### Installation Instructions

#### If you are running on Windows :

Shortcut is not made to be used on Windows default cmd or powershell so you need to use a Windows Subsystem Linux or WSL

Here are the most used ones on windows :

|Platform   |Compatibility 
|------|-----|
|Ubuntu WSL (in general) | :heavy_check_mark: |
|Fedora Remix for WSL | :heavy_check_mark: |
|Kali WSL| :question: WIP |
|Debian WSL | :question: WIP |
|Cent OS WSL (not official) | :no_entry: |

:question: It needs to be checked 

(WSL even if it should be running the same as Linux, WSL has some weird dependencies so I prefer to check it myself before giving an answer)

:no_entry: For now the only one that I found that was not working with is CentOS WSL
> Note : Please know that Cent OS WSL is not an offcial realease 

:computer: All the tests on WSL have been made on bash

When you chosed and installed your Linux Subsystem check the shells that are accepted :

|Platform   |Compatibility  |
|------|-----|
|bash | :heavy_check_mark: |
|ksh  | :heavy_check_mark: |
|zsh  | :heavy_check_mark: | 
|csh  | :no_entry: (WIP) | 

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
