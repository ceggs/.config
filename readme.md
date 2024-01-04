# dotfiles

## How it works

The idea is it that the nix home-manager controls the .config path though the custom defined .dotfiles directory.

Everytime you refresh the home-manager, the defined files contained in the .dotfiles directory will be regenerated through nix.

## Perequestie


1. Nix Installation:

Its's recommanded to install Nix through The Determinate Nix Installer (https://zero-to-nix.com/concepts/nix-installer)

``` The Determinate Nix Installer
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```


2. Installing home-manager 

- To install it you need the flake.nix and home.nix files.
- Within the directory of those two files you first need to add the files to git:

``` add to git
git add .
```

- Aferwards you can run this command:

``` installation of home-manager
nix run github:nix-community/home-manager -- switch --flake .
```

3. Usage of home-manager

- Default command (required to execute it in the path of home.nix and flake.nix

``` installation of home-manager
home-manager switch --flake .
```


## aliases

All commands are system wide - configured in .zshrc file

hm-switch 
```hm-switch
home-manager switch --flake ~/.dotfiles
```

hm-conf-zshrc

```hm-conf-zshrc
vim ~/.dotfiles/.zshrc
```
hm-conf-home

```hm-conf-home
vim ~/.dotfiles/home.nix
```






