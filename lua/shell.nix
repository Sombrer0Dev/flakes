{ pkgs, ... }:

let
  luaPackages = pkgs.lua51Packages;
in
pkgs.mkShell {
  buildInputs = with luaPackages; [
      busted
      nlua
  ];
}
