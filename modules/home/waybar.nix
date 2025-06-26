{
  ...
}:
{
  # Configure & Theme Waybar
  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [
          "pulseaudio"
          "battery"
          "network"
        ];

        "hyprland/workspaces" = {
          format = "{name}";
          format-icons = {
            default = " ";
            active = " ";
            urgent = " ";
          };
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };

        clock = {
          format = "{:%A %d %B %H:%M}";
          tooltip-format = "{:%Y-%m-%d %H:%M:%S}";
        };

        battery = {
          format = "{capacity}% {icon}";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
        };

        network = {
          format-wifi = "󰖩";
          format-ethernet = "󰈀";
          format-disconnected = "󰖪";
        };

        pulseaudio = {
          format = " {volume}%";
          format-muted = " muted";
        };
      }
    ];
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", sans-serif;
        font-size: 14px;
        color: #ffffff;
      }

      window#waybar {
        background-color: #1e1e2e;
        border: none;
      }

      #clock, #battery, #pulseaudio, #network, #workspaces {
        padding: 0 10px;
      }
    '';
  };
}
