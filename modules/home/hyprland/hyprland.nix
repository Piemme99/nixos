{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi # Application launcher
    swww # Background manager
    hyprpaper # Wallpaper manager
    brightnessctl # Brightness control
    nerd-fonts.jetbrains-mono # JetBrains Mono font
    pamixer #TODO check what this does (used to change volume)
  ];

  wayland.windowManager.hyprland = {
    enable = true;
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
          "caps:super"
        ];
      };
      exec-once = [
        "waybar &"
        "swww init &"
        "kitty &"
      ];
    };
      extraConfig = "
        monitor=,preferred,auto,auto
        monitor = Virtual-1, 1920x1080@60,auto,1";
  };
}
