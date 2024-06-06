{ pkgs, ... }:

{
  # Select internationalisation properties.
  services.xserver = {
    xkb.layout = "us,br";
    xkb.options = "grp:alt_shift_toggle";
  };
  
  i18n.supportedLocales = [
    "pt_BR.UTF-8/UTF-8"
    "en_US.UTF-8/UTF-8"
  ];
  
  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  environment.systemPackages = with pkgs; [
    nuspell
    hyphen
    hunspell
    hunspellDicts.pt_BR
    hunspellDicts.en_US
  ];
}
