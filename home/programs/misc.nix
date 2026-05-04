{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    zip
    unzip
    nautilus
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      nrs= "sudo nixos-rebuild switch --flake .#nixos";
      hms= "home-manager switch --flake .#lushious@nixos";
    };
  };
}
