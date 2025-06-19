{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # --- Windows / apps ---
      "SUPER, Return, exec, kitty"
      "SUPER, Q, killactive"
      "SUPER, E, exec, thunar"
      "SUPER, A, exec, wofi --show drun"

      # --- Window movement ---
      "SUPER, H, movefocus, l"
      "SUPER, L, movefocus, r"
      "SUPER, K, movefocus, u"
      "SUPER, J, movefocus, d"

      # --- Workspaces ---
      # AZERTY keyboard layout
      # Using generic names of key 1-9 (cf: https://rherault.dev/articles/hyprland-fr-layout)
      "SUPER, ampersand, workspace, 1"
      "SUPER, eacute, workspace, 2"
      "SUPER, quotedbl, workspace, 3"
      "SUPER, apostrophe, workspace, 4"
      "SUPER, parenleft, workspace, 5"
      "SUPER, egrave, workspace, 6"
      "SUPER, minus, workspace, 7"
      "SUPER, underscore, workspace, 8"
      "SUPER, ccedilla, workspace, 9"
      "SUPER, agrave, workspace, 10"

      # --- Move window to workspace ---
      "SUPER SHIFT, 1, movetoworkspace, 1"
      "SUPER SHIFT, 2, movetoworkspace, 2"
      "SUPER SHIFT, 3, movetoworkspace, 3"
      "SUPER SHIFT, 4, movetoworkspace, 4"
      "SUPER SHIFT, 5, movetoworkspace, 5"
      "SUPER SHIFT, 6, movetoworkspace, 6"
      "SUPER SHIFT, 7, movetoworkspace, 7"
      "SUPER SHIFT, 8, movetoworkspace, 8"
      "SUPER SHIFT, 9, movetoworkspace, 9"
      "SUPER SHIFT, 0, movetoworkspace, 10"

      # --- Move/resize mode ---
      "SUPER, R, submap, resize"
      "SUPER, M, submap, move"

      # --- Toggle fullscreen & floating ---
      "SUPER, F, fullscreen, 1"
      "SUPER, SPACE, togglefloating"

      # --- Screen capture (grim + slurp) ---
      "SUPER SHIFT, S, exec, grim -g \"$(slurp)\" - | wl-copy"

      # --- Volume ---
      ", XF86AudioRaiseVolume, exec, pamixer -i 5"
      ", XF86AudioLowerVolume, exec, pamixer -d 5"
      ", XF86AudioMute, exec, pamixer -t"

      # --- Brightness (si compatible) ---
      ", XF86MonBrightnessUp, exec, brightnessctl s +10%"
      ", XF86MonBrightnessDown, exec, brightnessctl s 10%-"
    ];

    # --- Submaps (mode de déplacement / redimensionnement à la i3) ---
    bindm = [
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];
  };
}
