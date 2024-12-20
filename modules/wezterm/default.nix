{ config, ... }:

{
  xdg.configFile."wezterm" = {
    enable = true;
    source = config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/home-manager/modules/wezterm/config";
  };
}
