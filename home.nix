{ pkgs, ...}:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "${pkgs.coreutils}/bin/ls -al";
    };
  };
 }