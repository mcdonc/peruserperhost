{ pkg, ... }:
{
  users.users.bob = {
    isNormalUser = true;
    initialPassword = "abc123";
    description = "Bob";
    extraGroups = [ "networkmanager" ];
    };
  home-manager = {
    users.bob = {
      imports = [ ./home.nix ];
      programs.git = {
        enable = true;
        userName = "Bob";
        userEmail = "bob@example.com";
      };
      home.stateVersion = "23.11";
    };
  };
}
