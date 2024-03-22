{ pkg, ... }:
{
  users.users.alice = {
    isNormalUser = true;
    initialPassword = "abc123";
    description = "Alice";
    extraGroups = [ "networkmanager" ];
    };
  home-manager = {
    users.alice = {
      programs.git = {
        enable = true;
        userName = "Alice";
        userEmail = "alice@example.com";
      };
      home.stateVersion = "23.11";
    };
  };
}
