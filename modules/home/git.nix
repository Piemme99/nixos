{ ... }:
{
  programs.git = {
    enable = true;
    userName = "Piemme";
    userEmail = "pmgaudichau.blk@gmail.com";

    extraConfig = {
      push.default = "simple"; # Match modern push behavior
      log.decorate = "full"; # Show branch/tag info in git log
      log.date = "iso"; # ISO 8601 date format (YYYY-MM-DD HH:MM:SS +TZ)
      merge.conflictStyle = "diff3"; # Better conflict resolution style
      core.editor = "vscode"; # Use vsCode as the default editor for Git
    };
    aliases = {
      br = "branch --sort=-committerdate";
      co = "checkout";
      df = "diff";
      com = "commit -a";
      s = "stash";
      p = "pull";
      st = "status";
    };
  };
}
