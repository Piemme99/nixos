{ pkgs, ... }:
{
  programs.lazyvim = {
    enable = true;

    # Add LSP servers and tools
    extraPackages = with pkgs; [
      rust-analyzer
      gopls
      nodePackages.typescript-language-server
    ];

    # Add treesitter parsers
    treesitterParsers = with pkgs.tree-sitter-grammars; [
      tree-sitter-rust
      tree-sitter-go
      tree-sitter-typescript
      tree-sitter-tsx
    ];
  };
}
