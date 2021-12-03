{ sources ? import niv/sources.nix }:
let
  hello = pkgs.writeShellScriptBin "hello" ''echo "Hello from the Nix channel overlay!"'';
  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit hello;
      })
    ];
  };
in pkgs
