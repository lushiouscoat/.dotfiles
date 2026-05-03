{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    coppwr
    pwvucontrol
  ];

  services.pipewire = {
    enable = true;
  };
}
