{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    electron
    eslint
  ];
  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
