{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "dwm";
  buildInputs = [ gcc x11 xorg.libXinerama ];
  shellHook = ''
    export NIX_PATH="nixpkgs=${toString <nixpkgs>}"
  '';
}
