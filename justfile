default:
    @just --list

switch:
    home-manager switch --flake .#reesebars

check:
    nix flake check
