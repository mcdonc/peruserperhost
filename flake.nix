{
  description = "My flakes configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    musnix.url = "github:musnix/musnix"; 
  };

  outputs = { self, nixpkgs, musnix }@inputs:
  let
    system = "x86_64-linux";
    specialArgs = inputs // { inherit system; };
  in {
      nixosConfigurations = {
        nixmusic = nixpkgs.lib.nixosSystem {
          specialArgs = specialArgs;
          system = system;
          modules = [
	  musnix.nixosModules.musnix
	  ./configuration.nix
	  ];
        };
      };
    };
}
