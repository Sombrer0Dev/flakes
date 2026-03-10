{ pkgs, ... }:

let
  pythonPackages = pkgs.python312Packages;
in
pkgs.mkShell {
  buildInputs = with pythonPackages; [
    pkgs.python312
    venvShellHook
  ];
  venvDir = "./.venv";
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc
  ];
}
