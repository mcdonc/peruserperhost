{ pkg, ... }:
{
  users.users.alice = {
    isNormalUser = true;
    initialPassword = "abc123";
    description = "Alice";
    extraGroups = [ "networkmanager" ];
    };
}
