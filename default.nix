{ sources ? import niv/sources.nix }:     # import the sources
import sources.nixpkgs                  # and use them again!
  { overlays = [] ; config = {}; }

