{ pkgs, ... }:

{
  programs.home-manager.enable = true;

  programs.fd.enable = true;
  programs.fzf.enable = true;
  programs.ripgrep.enable = true;

  home.packages = with pkgs; [
    c3c
    lua
    nodejs_22
    python313
    tree-sitter
    wget
  ];
}
