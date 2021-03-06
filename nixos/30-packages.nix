{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  #   wget vim
  # ];

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    alacritty
    arandr
    awscli
    bash-completion
    calibre
    chromium
    dmenu
    feh
    firefox
    fontconfig
    gcc
    gimp
    git
    gnumake
    haskellPackages.pandoc-citeproc
    htop
    i3
    i3status
    jekyll
    libreoffice
    lsof
    mosh
    networkmanagerapplet
    nix-prefetch-scripts
    nox
    pandoc
    pcmanfm
    pdftk
    powertop
    python3
    python37Packages.jupyter
    python37Packages.pandas
    ruby
    sakura
    shellcheck
    stdenv
    stow
    texlive.combined.scheme-full
    tlp
    vim_configurable
    unzip
    wget
    which
    xclip
    xorg.xbacklight
    xorg.xev
    xscreensaver
    xsel
    zathura
    zotero
  ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "18.03"; # Did you read the comment?

  # nixos-rebuild switch --upgrade  to upgrade NixOS to the latest version in the 
  # current channel. (To see when the service runs, see systemctl list-timers
  system.autoUpgrade.enable = true;

}
