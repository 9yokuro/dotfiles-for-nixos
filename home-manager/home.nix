{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./bash
    ./foot
    ./git
    ./gtk
    ./readline
    ./sway
  ];

  home.homeDirectory = "/home/9yokuro";
  home.packages = with pkgs; [
    bottom
    cargo
    clang
    clippy
    dconf
    deno
    emacs-gtk
    gauche
    go
    mold
    nasm
    nixfmt-rfc-style
    rlwrap
    rustc
    rustfmt
    sbcl
    swaybg
    tree
    vim
    vim-startuptime
    wget
  ];
  home.sessionVariables = {
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";
    DOTFILES_ROOT = "$HOME/dotfiles";
    EDITOR = "vim";
    GTK_IM_MODULE = "fcitx5";
    QT_IM_MODULE = "fcitx5";
    XMODIFIERS = "@im=fcitx5";
  };
  home.stateVersion = "24.05";
  home.username = "9yokuro";
  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.gnome.adwaita-icon-theme;
  };

  programs.home-manager.enable = true;
}
