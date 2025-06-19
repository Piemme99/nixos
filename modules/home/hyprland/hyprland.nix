{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi
    grim
    slurp
    wl-clipboard
    brightnessctl
    pamixer
    #thunar
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = [ "--all" ];
    };
    xwayland = {
      enable = true;
    };
    settings = {
      input = {
        kb_layout = "fr";
        kb_options = [
          "grp:alt_caps_toggle"
          "caps:super"
        ];
      };
    };
  };
}
