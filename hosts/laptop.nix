{
  imports = [
    ../modules/base.nix
    ../modules/fish.nix
    ../modules/font.nix
    ../modules/neovim
    ../modules/wezterm
  ];

  home.username = "emchoi";
  home.homeDirectory = "/Users/emchoi";

  home.stateVersion = "24.05";
}
