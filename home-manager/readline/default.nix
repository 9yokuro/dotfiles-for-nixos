{ ... }:

{
  programs.readline = {
    enable = true;
    bindings = {
      "\\C-p" = "history-search-backward";
      "\\C-n" = "history-search-forward";
    };
    extraConfig = builtins.readFile ./inputrc;
  };
}
