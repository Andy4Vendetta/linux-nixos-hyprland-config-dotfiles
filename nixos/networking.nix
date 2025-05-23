{ pkgs, ... }:

{
  # Enable networking
  networking.hostName = "vendetti"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  # networking.networkmanager.wifi.backend = "iwd";

  # networking.wireless.iwd = {
    # enable = true;
    # settings = {
      # General = {
        # EnableNetworkConfiguration = true;
      # };
      # Network = {
        # EnableIPv6 = true;
      # };
      # Scan = {
        # DisablePeriodicScan = true;
      # };
    # };
  # };

  programs.nekoray.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  networking.proxy.default = "http://127.0.0.1:2080/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  networking.proxy.noProxy = "127.0.0.1, localhost, internal.domain, aeza.net, yandex.com, yandex.net, yandex.ru, vk.com, reddit.com, archlinux.org, nsupdate.info, myip.com, vendetti.ru";

}
