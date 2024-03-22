{ pkg, ... }:
{
  users.users.chrism = {
    isNormalUser = true;
    description = "Chris McDonough";
    extraGroups = [ "networkmanager" "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOLXUsGqUIEMfcXoIiiItmGNqOucJjx5D6ZEE3KgLKYV ednesia"
     ];
    };
}
