{{ config, pkgs, ... }:
let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in {
  home.sessionPath = [
    "${dotfilesDir}/dotfiles/lib/bin"
  ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      hm-switch = "home-manager switch --flake ${dotfilesDir}#reesebars";
      gs = "git status";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
 config, pkgs, ... }:
let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      hm-switch = "home-manager switch --flake ${dotfilesDir}#reesebars";
      gs = "git status";
    };
    initExtra = ''
      export PATH="${dotfilesDir}/dotfiles/lib/bin:$PATH"
    '';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}

