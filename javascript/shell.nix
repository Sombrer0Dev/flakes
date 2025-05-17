{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
  ];
  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';
}
