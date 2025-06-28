{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wofi # Application launcher
    swww # Background manager
    hyprpaper # Wallpaper manager
    brightnessctl # Brightness control
    nerd-fonts.jetbrains-mono # JetBrains Mono font
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
  };
}
