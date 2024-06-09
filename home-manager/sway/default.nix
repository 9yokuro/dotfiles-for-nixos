{
  config,
  pkgs,
  lib,
  ...
}:

{
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      bars = [ { command = "${pkgs.waybar}/bin/waybar"; } ];
      defaultWorkspace = "workspace number 1";
      floating = {
        border = 0;
        titlebar = false;
      };
      focus.followMouse = "no";
      fonts.names = [ "NotoSans" ];
      gaps = {
        bottom = 5;
        horizontal = 5;
        inner = 5;
        left = 5;
        outer = 5;
        right = 5;
        top = 5;
        vertical = 5;
      };
      input."*" = {
        xkb_layout = "jp";
        xkb_options = "ctrl:nocaps";
      };
      keybindings =
        let
          modifier = config.wayland.windowManager.sway.config.modifier;
        in
        lib.mkOptionDefault {
          "${modifier}+d" = "mode launcher";
          "${modifier}+Shift+e" = "mode exit";
          "${modifier}+Shift+p" = "output - power toggle";
        };
      modes = {
        exit = {
          r = "exec reboot";
          p = "exec poweroff";
          Escape = "mode default";
          Return = "mode default";
        };
        launcher = {
          b = "exec firefox; mode default";
          e = "exec emacs; mode default";
          Escape = "mode default";
          Return = "mode default";
        };
      };
      modifier = "Mod4";
      startup = [
        { command = "fcitx5"; }
        { command = "${pkgs.swaybg}/bin/swaybg --image ~/dotfiles/wallpapers/monochrome.jpg"; }
      ];
      terminal = "${pkgs.foot}/bin/foot";
      window = {
        border = 0;
        titlebar = false;
      };
    };
  };

  programs.waybar = {
    enable = true;
    style = builtins.readFile ./style.css;
    settings = {
      mainBar = {
        height = 24;
        modules-left = [ "sway/workspaces" ];
        modules-center = [ "sway/window" ];
        modules-right = [
          "sway/mode"
          "clock"
        ];
      };
    };
  };
}
