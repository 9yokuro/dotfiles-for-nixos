{ ... }:

{
  programs.bash = {
    bashrcExtra = builtins.readFile ./rc.sh;
    enable = true;
    historyControl = [
      "erasedups"
      "ignoreboth"
    ];
    profileExtra = builtins.readFile ./profile.sh;
    shellAliases = {
      c = "clear";
      cp = "cp --reflink=auto --verbose";
      e = "exit";
      g = "git";
      ga = "git add";
      gb = "git branch";
      gc = "git commit";
      gC = "git clone";
      gd = "git diff";
      gg = "git grep";
      gl = "git log";
      gm = "git mv";
      gp = "git push";
      gP = "git pull";
      gr = "git reflog";
      gs = "git status";
      gS = "git switch";
      gt = "git tag";
      grep = "grep --color=auto";
      la = "ls --almost-all --color=auto --classify=auto";
      ll = "ls --color=auto --classify=auto -l --no-group --size --si";
      ln = "ln --verbose";
      ls = "ls --color=auto --classify=auto";
      mkdir = "mkdir --verbose";
      mv = "mv --verbose";
      rlgosh = "rlwrap gosh -r7";
      rlsbcl = "rlwrap sbcl";
      rm = "rm --verbose";
      sync_status = "watch grep -e Dirty: -e Writeback: /proc/meminfo";
      tree1 = "tree -L 1";
      v = "vim";
    };
  };
}
