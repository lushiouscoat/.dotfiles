{ config , pkgs, ... }: {
  home.packages = with pkgs; [
    neovim
    arduino-ide
  ];

  programs.git = {
    enable = true;
    signing.format = null;
    settings.user = {
      name = "lushiouscoat";
      email = "fricodelka71@gmail.com";
    };
  };
  programs.neovim.extraConfig = ''
    set tabstop=4
    set shiftwidth=4
    set expandtab
  '';
}
