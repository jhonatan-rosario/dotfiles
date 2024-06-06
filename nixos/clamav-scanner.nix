{ ... }:

{
  services.clamav.scanner = {
    enable = false;
    interval = "Sat *-*-* 04:00:00";
  };
}
