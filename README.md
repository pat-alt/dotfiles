# `dotfiles`

This repo contains some of my config files to make them easily accessible across platforms. This setup is inspired by this blog [post](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/) by Gabrielle Young.

## Use this setup

If you want to use this setup, firstly clone this repo:

```
git clone https://github.com/pat-alt/dotfiles.git $HOME/dotfiles
```

> **Note**
I work with [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/wiki) and [ohmybash](https://github.com/ohmybash/oh-my-bash). The `.zshrc`  and `.bashrc` files in this repo therefore expect the following folders to exist, respectively: `$HOME/.oh-my-zsh` and `$HOME/.oh-my-bash`. 

Add the following alias:

```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME'
```

Finally, checkout the actual content:

```
config checkout
```

> **Note**
You may also have to run `config restore .` which will overwrite existing files (caution!).

### Local Setup

In some cases, you may want to use local configurations that only apply to the local system and should not be shared across platforms. To specify such configurations, use the `$HOME/local.sh` file. If this file does not exist, it will automatically be created the first time `.zshrc` or `.bashrc` are sourced. The file is not (and should not be) tracked by git. 
