{
  programs.fish.enable = true;
  programs.fish.shellInit = ''
    set -g fish_greeting

    if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
      source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    end
  '';
}
