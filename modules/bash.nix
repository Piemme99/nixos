{ ... }:

{
    programs.bash = {
    shellAliases = {
      ll = "ls -la";
      gs = "git status";
      garbage = "sudo nix-collect-garbage --delete-older-than 15d";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#laptop";
      update = "sudo nix flake update";
    };
  };
}
