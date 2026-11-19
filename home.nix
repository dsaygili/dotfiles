{ config, pkgs, ... }: 
{
  home.username = "reesebars";
  home.homeDirectory = "/home/reesebars";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/hyprland.nix
    ./modules/shell.nix
    ./modules/git.nix
  ];

  home.packages = with pkgs; [
    just
    neovim
    ripgrep
    tmux
    wl-clipboard
    grim
    slurp
    brightnessctl
  ];
}
