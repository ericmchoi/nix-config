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
    jujutsu
    lua
    lua-language-server
    nodejs_24
    opentofu
    python313
    ssm-session-manager-plugin
    terraform-ls
    typescript-language-server
    wget
  ];

  programs.fd = {
    enable = true;
    ignores = [
      ".git/"
      ".jj/"
    ];
  };
  programs.fzf.enable = true;
  programs.ripgrep.enable = true;

  programs.home-manager.enable = true;
}
