{ pkgs, inputs, ... }:
{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    firefox.enable = true; # Firefox is not installed by default
    hyprland.enable = true; # someone forgot to set this so desktop file is created
  };
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    vscode
    kitty # Terminal emulator
    nixfmt-rfc-style # Nix Formatter
    nixd # LSP for nix
    nix-ld # Allows excecution of binary (for remote vscode)
    nerd-fonts.jetbrains-mono # JetBrains Mono font
    where-is-my-sddm-theme #TODO: is this usefull ?

  ];
  programs.nix-ld.enable = true; # https://blog.thalheim.io/2022/12/31/nix-ld-a-clean-solution-for-issues-with-pre-compiled-executables-on-nixos/

  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
}
