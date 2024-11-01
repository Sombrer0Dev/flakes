{ pkgs, ... }:
pkgs.mkShell {
  buildInputs = [
    pkgs.zig
    pkgs.zig-shell-completions
    pkgs.zls
  ];
  postVenvCreation = ''
  '';
  postShellHook = ''
  '';
}
