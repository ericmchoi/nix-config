{ config, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  xdg.configFile."nvim" = {
    enable = true;
    source = config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/home-manager/modules/neovim/config";
  };
}
