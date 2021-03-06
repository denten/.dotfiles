{ config, pkgs, ... }:

{
  # handle lid close hibernate, suspend, or ignore
  systemd.extraConfig = "";
  services.logind.extraConfig = ''
    HandleLidSwitch=hibernate
    LidSwitchIgnoreInhibited=yes
  '';

  # Thinkpad power services
  services.tlp.enable = true;
  services.tlp.extraConfig = ''
      DEVICES_TO_DISABLE_ON_STARTUP="bluetooth"
      START_CHARGE_THRESH_BAT0=75
      STOP_CHARGE_THRESH_BAT0=90
      START_CHARGE_THRESH_BAT1=75
      STOP_CHARGE_THRESH_BAT1=90
      CPU_SCALING_GOVERNOR_ON_BAT=powersave
      ENERGY_PERF_POLICY_ON_BAT=powersave
    '';

 # needed to get suspend at low bat to work
 services.upower.enable = true;

 #  services.udev.extraRules = ''
 #       SUBSYSTEM=="power_supply"
 #       ATTR{status}=="Discharging"
 #       ATTR{capacity}=="[0-5]"
 #       RUN+="${pkgs.systemd}/bin/systemctl hibernate"
 #  '';

}
