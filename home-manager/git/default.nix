{ ... }:

{
  programs.git.enable = true;
  programs.git.extraConfig = {
    core.editor = "vim";
    init.defaultBranch = "main";
  };
  programs.git.userName = "9yokuro";
  programs.git.userEmail = "119095935+9yokuro@users.noreply.github.com";
}
