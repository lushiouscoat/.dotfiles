{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    coppwr
    pwvucontrol
  ];

  services.rtkit.enable = true;
  services.pipewire = {
    enable = true;
  };
}
