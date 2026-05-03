{ config, pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.9;
      };
#      font = {
#        size = 12.0;
#        normal = {
#          family = "something";
#	   style = "Regular";
#	 };
#      };
    }:
#    theme = "theme";
  };
}
