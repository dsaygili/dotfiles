{ ... }: {
  programs.git = {
    enable = true;
    userName = "dsaygili";
    userEmail = "dsaygili@users.noreply.github.ccom";
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}

