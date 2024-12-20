{
  description = "Home Manager configuration of emchoi";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    c3c = {
      url = "github:c3lang/c3c/0.6.x";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, c3c, ... }:

  let
    system = "aarch64-darwin";
    pkgs = nixpkgs.legacyPackages.${system}.extend
      (final: prev: {
        c3c = c3c.packages.${system}.default.override {
          llvmPackages = prev.llvmPackages_19;
        };
      });
  in {
    homeConfigurations = {
      "emchoi" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./hosts/laptop.nix ];
      };
    };
  };
}
