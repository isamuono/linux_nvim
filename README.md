# linux_nvim

## Setup for ansible
```
$ cd ansible/roles/common/files/$HOME/.config
$ git submodule add "https://github.com/isamuono/linux_nvim" nvim
```

### Update submodule dir
```
$ git submodule update --remote
```

## Setup on a client PC
### Preparation for ansible
```
$ git clone --recurse-submodules https://github.com/isamuono/dom-servers-tmp
~/.../ansible$ mv roles/common/files/home/ymir/ roles/common/files/home/{{ LOCALUSER }}
and so on...
$ cp ~/.bashrc ~/.bashrc.bak
and so on...
```

### nvim-web-devicons
#### Windows
1. Download zip file and Install
   * https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip

#### Mac
1. Download zip file and Install
   * cf. https://osatoh.com/entry/2023/09/19/200807
