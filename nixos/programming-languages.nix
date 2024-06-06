{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # go
    nodePackages_latest.nodejs
    android-tools
    flutter
    # bun
    # lua
    # zig
    # numbat
  ];
}
