{ pkgs, ... }:

let
  pythonPackages = pkgs.python312Packages;
in
pkgs.mkShell {
  buildInputs = with pythonPackages; [
    python
    venvShellHook
    numpy
    pkgs.ruff
    jedi-language-server
    pkgs.semgrep
  ];
  venvDir = "./venv";
  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
  '';
  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
