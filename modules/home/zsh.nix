{
  ...
}:
{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
        "regexp"
        "root"
        "line"
      ];
    };
    historySubstringSearch.enable = true;

    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    oh-my-zsh = {
      enable = true;
      theme = "gnzh";
    };

    plugins = [
    ];

    shellAliases = {
      sv = "sudo nvim";
      v = "nvim";
      c = "clear";
      cat = "bat";
      man = "batman";
      garbage = "sudo nix-collect-garbage --delete-older-than 15d";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#laptop";
      update = "sudo nix flake update";
    };
  };
}
