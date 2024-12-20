{
  imports = [
    ../modules/base.nix
    ../modules/fish.nix
    ../modules/neovim
    ../modules/ghostty
  ];

  home.username = "emchoi";
  home.homeDirectory = "/Users/emchoi";

  home.stateVersion = "24.05";
}
