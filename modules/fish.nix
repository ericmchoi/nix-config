{
  programs.fish = {
    enable = true;
    shellInit = ''
      set -g fish_greeting

      if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
        source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
      end

      if test -x /opt/homebrew/bin/brew
        eval "$(/opt/homebrew/bin/brew shellenv)"
      end
    '';
    functions = {
      fish_prompt = ''
        set -l last_status $status
        set -l normal (set_color normal)
        set -l status_color (set_color brgreen)
        set -l cwd_color (set_color $fish_color_cwd)

        # Since we display the prompt on a new line allow the directory names to be longer.
        set -q fish_prompt_pwd_dir_length
        or set -lx fish_prompt_pwd_dir_length 0

        # Color the prompt differently when we're root
        set -l suffix '❯'
        if functions -q fish_is_root_user; and fish_is_root_user
          if set -q fish_color_cwd_root
            set cwd_color (set_color $fish_color_cwd_root)
          end
          set suffix '#'
        end

        # Color the prompt in red on error
        if test $last_status -ne 0
          set status_color (set_color $fish_color_error)
        end

        echo -s '[' (date "+%H:%M:%S") '] ' (prompt_login) ' ' $cwd_color (prompt_pwd) $normal (fish_vcs_prompt) $normal
        echo -n -s $status_color $suffix ' ' $normal
      '';
    };
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    options = [
      "--cmd cd"
    ];
  };
}
