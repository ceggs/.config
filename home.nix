{ pkgs, config, ... }: {
  home = {
    stateVersion = "23.11";
    username = "christopher";
    homeDirectory = "/Users/christopher";
    packages = [
      pkgs.tmux
      pkgs.neovim
      pkgs.iterm2
    ];
    file.".config" = { source = ./config; recursive = true; };
    file.".zshrc" = { source = ./.zshrc; };
  };
  
  xdg.enable = true;

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
}

