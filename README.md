# Dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Requirements
Ensure you have the following installed on your system

### Git

```
homebrew install git
```

### Stow

```
homebrew install stow
```

## Installation
First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:kyle-kettler/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
