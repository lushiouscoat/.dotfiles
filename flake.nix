{
  description = "MY flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    quickshell = {
      url = "github:outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, disko, hyprland, quickshell, ... }: {
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./system/configuration.nix
	{
          programs.hyprland = {
            enable = true;
            package = inputs.hyprland.packages.x86_64-linux.hyprland;
            portalPackage = inputs.hyprland.packages.x86_64-linux.xdg-desktop-portal-hyprland;
          };
	}
      ];
    };

    homeConfigurations."lushious@nixos" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = { inherit inputs; };
      modules = [
        ./home-manager/home.nix 
	{
          wayland.windowManager.hyprland = {
            enable = true;
            package = inputs.hyprland.packages.x86_64-linux.hyprland;
            portalPackage = inputs.hyprland.packages.x86_64-linux.xdg-desktop-portal-hyprland;
          };
	}
      ];
    };
  };
}
