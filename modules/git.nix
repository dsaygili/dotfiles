{ ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "dsaygili";
        email = "dsaygili@users.noreply.github.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
