# my zsh configuration
{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 20000;
      save = 20000;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "direnv"
        "git"
        "tmux"
        "eza"
        "fzf"
        "z"
      ];
      theme = "agnoster";
      extraConfig = ''
        ZSH_TMUX_AUTOSTART=true

        zstyle :omz:plugins:eza dirs-first yes
        zstyle :omz:plugins:eza show-group yes
        zstyle :omz:plugins:eza icons yes
      '';
    };

    defaultKeymap = "emacs";

    shellAliases = {
        l = "ls";
      };

    envExtra = ''
      GAM_HOME="''${HOME}/.local/gam7"
    '';

    initExtra = ''
      # set up GAM
      # # The git plugin, if enabled, aliases "gam" to "git am". If the plugin/alias is
      # # enabled, disable it to prevent conflict with Google Admin Manager "gam".
      if [[ -d "''${GAM_HOME}" ]]; then
          [[ -n $(alias gam) ]] && unalias gam
          export PATH="''${GAM_HOME}:''${PATH}"
      fi
    '';
  };
}
