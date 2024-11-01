{ python312Packages, ... }:

with python312Packages;
buildPythonApplication {
  pname = "aoc";
  version = "2023";
  pyproject = true;
  nativeBuildInputs = [
    more-itertools
    networkx
    setuptools
    wheel
  ];
  src = ./.;
}
