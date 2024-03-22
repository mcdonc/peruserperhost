{ pkg, ... }:
{
  users.users.bob = {
    isNormalUser = true;
    initialPassword = "abc123";
    description = "Bob";
    extraGroups = [ "networkmanager" ];
    };
}
