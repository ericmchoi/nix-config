{ config, pkgs, ... }:

{
  imports = [
    modules/fish.nix
    modules/ghostty
    modules/neovim
  ];

  home.username = "emchoi";
  home.homeDirectory = "/Users/emchoi";

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    awscli2
    lua
    lua-language-server
    nodejs_22
    opentofu
    python313
    ssm-session-manager-plugin
    typescript-language-server
    wget
  ];

  programs.fd.enable = true;
  programs.fzf.enable = true;
  programs.ripgrep.enable = true;

  programs.home-manager.enable = true;
}
