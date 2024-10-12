{ config, pkgs, ... }:

{
  services = {
    customCups.enable = true; # Enable CUPS to print documents defined in cups.nix.
    libinput.enable = true;  # Enable touchpad support
    tailscale = {
      enable = true;
      useRoutingFeatures = "both";
    };
    flatpak.enable = true;
    usbmuxd.enable = true;
    services.mpd.enable = true; # Music Player Demon
    # Commented out services
    # prowlarr.enable = true;
    # sonarr.enable = true;
    # jellyfin.enable = true;
    # jackett.enable = true;
  };

  systemd.services.NetworkManager-wait-online.enable = false;

  # XFCE desktop manager (for Thunar preferences)
  services.xserver.desktopManager.xfce = {
    enable = true;
    noDesktop = true;
  };
}