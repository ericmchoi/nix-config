{ pkgs, config, ... }:

{
  home.packages = [
    pkgs.nerd-fonts.hack
  ];

  xdg.configFile."ghostty" = {
    enable = true;
    source = config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/home-manager/modules/ghostty/config";
  };
}
