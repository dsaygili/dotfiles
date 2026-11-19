# List available recipes when running `just` with no arguments
default:
    @just --list

# Apply Home Manager configuration changes
switch:
    home-manager switch --flake .#reesebars

# Validate flake syntax and module evaluation without switching
check:
    nix flake check

# Update all flake inputs (nixpkgs, home-manager) and apply
update:
    nix flake update && home-manager switch --flake .#reesebars

# Check repository status and recent commits
status:
    git status -sb
    @echo "---"
    @git log -n 3 --oneline

# Stage, commit, and push all dotfiles changes (usage: just sync "your message")
sync msg="Update dotfiles":
    git add .
    git commit -m "{{msg}}"
    git push

# Format all .nix files cleanly (requires alejandra or nixpkgs-fmt)
fmt:
    nixfmt .

# Remove Home Manager generations older than 14 days and garbage-collect store
clean:
    home-manager expire-generations "-14 days"
    nix-collect-garbage -d
