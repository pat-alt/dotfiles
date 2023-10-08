# Config files `.cfg`

This repo contains some of my config files to make them easily accessible across platforms. This setup is inspired by this blog [post](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/) by Gabrielle Young.

## Use this setup

If you want to use this setup, firstly clone this repo:

```
git clone https://github.com/pat-alt/.cfg.git $HOME/.cfg
```

Add the following alias:

```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Finally, checkout the actual content:

```
config checkout
```