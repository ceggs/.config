{ pkgs, config, ... }: {
  home = {
    stateVersion = "23.11";
    username = "christopher";
    homeDirectory = "/Users/christopher";
    packages = [
      pkgs.tmux
      pkgs.neovim
      pkgs.iterm2
      pkgs.starship
    ];
    file.".config" = { source = ./config; recursive = true; };
    file.".zshrc" = { source = ./.zshrc; };
    file.".gitconfig" = { source = ./.gitconfig; };
  };
  
  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
}

