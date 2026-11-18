{ config, pkgs, ... }: {
  home.username = "reesebars";
  home.homeDirectory = "/home/reesebars";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/hyprland.nix
  ];

  home.packages = with pkgs; [
    git
    neovim
    ripgrep
    tmux
    starship
    zsh
    wl-clipboard
    grim
    slurp
    brightnessctl
  ];
}
