{ pkgs, ... }:
{
  programs.home-manager.enable = true;
  home.stateVersion = "24.05";

  home.packages = [
    pkgs.wget
  ];
}
