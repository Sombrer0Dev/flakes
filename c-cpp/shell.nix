{ pkgs, ... }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    clang-tools
    clang
    cmake
    bear
    codespell
    conan
    cppcheck
    doxygen
    gtest
    lcov
    vcpkg
    vcpkg-tool
    gdb
  ];
}
