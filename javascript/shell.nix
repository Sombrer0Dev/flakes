{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    electron
  ];
  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
