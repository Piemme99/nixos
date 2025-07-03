{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/default.nix
  ];

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.theme = "where_is_my_sddm_theme";

  # SSH
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true; # TODO: set to false for security
      KbdInteractiveAuthentication = false; # Connect only with SSH keys
    };
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Paris";

  # Configure console keymap
  console.keyMap = "fr";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Passwordless sudo for the user.
  security.sudo.extraRules = [
    {
      users = [ "piemme" ];
      commands = [
        {
          command = "ALL";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  programs.zsh.enable = true;

  users.users.piemme = {
    isNormalUser = true;
    description = "Piemme";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    users.piemme = {
      imports = [ ./modules/home ];
      home = {
        username = "piemme";
        homeDirectory = "/home/piemme";
        stateVersion = "23.11";
      };
    };

  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "piemme";

  programs.hyprland.enable = true;
  services.libinput.touchpad.naturalScrolling = true;

  system.stateVersion = "25.05";

}
