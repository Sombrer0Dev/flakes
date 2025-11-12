{ pkgs, ... }:

let
  pythonPackages = pkgs.python314Packages;
in
pkgs.mkShell {
  buildInputs = with pythonPackages; [
    pkgs.python314
    venvShellHook
  ];
  venvDir = "./.venv";
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc
  ];
}
