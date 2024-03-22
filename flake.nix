{
    description = "My flakes configuration";

    inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };

    outputs = { self, nixpkgs }@inputs:
      {
        nixosConfigurations = {
          host1 = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [ ./host1.nix ];
          };
        };
      };
}
