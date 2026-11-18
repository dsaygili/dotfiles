# ThinkPad X380 Yoga Dotfiles

Reproducible Arch Linux + Nix Home Manager + Hyprland setup tailored for the Lenovo ThinkPad X380 Yoga (dual-booting with Windows 11).

## System Overview

- **Hardware:** Lenovo ThinkPad X380 Yoga (Intel Core i5-8350U, 16 GB RAM, Intel UHD Graphics 620)
- **OS & Bootloader:** Arch Linux with `systemd-boot`
- **Environment Management:** Nix Flakes + Standalone Home Manager
- **Window Manager & UI:** Hyprland, Kitty, Wofi, Waybar, Dunst, PipeWire
- **Networking & Remote Access:** OpenSSH, Tailscale

## Repository Structure

```text
.dotfiles/
├── flake.nix          # Nix flake inputs & Home Manager configuration
├── flake.lock         # Pinned dependency versions
├── home.nix           # Core user environment, packages, and imports
└── modules/
    └── hyprland.nix   # Hyprland compositor, keybindings, and input settings
```

## ThinkPad X380 Yoga Hardware Notes

### Touchpad & TrackPoint Dual-Boot Fix
Windows 11 Fast Startup can leave the `i8042` AUX controller (`serio1`) uninitialized across warm reboots. To ensure the Synaptics touchpad and TrackPoint initialize reliably on every boot, the following kernel parameters are appended to the `systemd-boot` loader entry (`/boot/loader/entries/*.conf`):

```text
i8042.nopnp=1 i8042.nomux=1 i8042.reset=1
```

## Quick Setup & Rebuild

1. **Clone the repository:**
   ```bash
   git clone git@github.com:dsaygili/dotfiles.git ~/.dotfiles
   ```

2. **Apply the Home Manager configuration:**
   ```bash
   home-manager switch --flake ~/.dotfiles#reesebars
   ```

3. **Launch Hyprland (from TTY):**
   ```bash
   dbus-run-session start-hyprland
   ```

