{ }:

let
  rev = "nixos-unstable";

  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs-channels/archive/${rev}.tar.gz";
  };

  pkgs = import nixpkgs {};

in pkgs.mkShell {

  buildInputs = [
    pkgs.nixops
    pkgs.socat
  ];

  NIX_PATH = "nixpkgs=${nixpkgs}";

}
