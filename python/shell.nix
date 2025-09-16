{ pkgs, ... }:

let
  pythonPackages = pkgs.python312Packages;
in
pkgs.mkShell {
  buildInputs = with pythonPackages; [
    python
    # venvShellHook
    numpy
    pkgs.uv
    jedi-language-server
  ];
  # venvDir = "./venv";
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc
  ];
  # postVenvCreation = ''
  #   unset SOURCE_DATE_EPOCH
  # '';
  # postShellHook = ''
  #   unset SOURCE_DATE_EPOCH
  # '';
}
