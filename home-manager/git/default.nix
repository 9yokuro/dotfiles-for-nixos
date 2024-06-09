{ ... }:

{
  programs.git.enable = true;
  programs.git.extraConfig = {
    core.editor = "vim";
    init.defaultBranch = "main";
  };
  programs.git.userName = "9yokuro";
  programs.git.userEmail = "xzstd099@protonmail.com";
}
