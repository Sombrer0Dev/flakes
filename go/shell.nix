{ pkgs, ... }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    go
    gofumpt
    gotools
    reftools
    golines
    gomodifytags
    gotests
    iferr
    impl
    delve
    ginkgo
    gotestsum
    govulncheck
  ];
}
