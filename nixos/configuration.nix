{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [ ./hardware-configuration.nix ];

  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;

  console.keyMap = "jp106";

  environment.systemPackages = with pkgs; [
    git
    vim
  ];

  fileSystems = {
    "/".options = [
      "compress-force=zstd"
      "ssd"
      "discard=async"
    ];
    "/home".options = [
      "compress-force=zstd"
      "ssd"
      "discard=async"
    ];
    "/data".options = [
      "compress-force=zstd"
      "discard=async"
    ];
  };

  fonts.packages = with pkgs; [
    iosevka
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
  ];

  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = with pkgs; [
    intel-media-driver
    libvdpau-va-gl
  ];

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-skk
      fcitx5-gtk
    ];
  };

  networking.hostName = "9yokuroNixOS";

  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 3d";
  };
  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  security.doas.enable = true;
  security.doas.extraRules = [
    {
      groups = [ "wheel" ];
      keepEnv = true;
    }
  ];
  security.polkit.enable = true;
  security.sudo.enable = false;

  services.btrfs.autoScrub = {
    enable = true;
    interval = "weekly";
    fileSystems = [
      "/"
      "/home"
      "/data"
    ];
  };

  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;

  system.stateVersion = "24.05";

  time.timeZone = "Asia/Tokyo";

  users.users."9yokuro" = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      firefox
      pavucontrol
    ];
  };
}
