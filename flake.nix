{
  description = "My flakes configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable }@inputs:
  let
    system = "x86_64-linux";
    specialArgs = inputs // { inherit system; };
  in {
      nixosConfigurations = {
        host1 = nixpkgs.lib.nixosSystem {
          specialArgs = specialArgs;
          system = system;
          modules = [ ./configuration.nix ];
        };
      };
    };
}
