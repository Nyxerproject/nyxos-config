{inputs, ...}: {
  imports = [
    inputs.nixos-generators.nixosModules.all-formats
    inputs.disko.nixosModules.disko
    inputs.chaotic.nixosModules.default

    ./theme
    ./nixvim
    ./nix
    ./localization.nix
    ./security
    ./mullvad.nix
    ./packages.nix
    ./scripts.nix
    ./tailscale.nix
    ./ssh.nix
    ./development.nix
    ./networking
    ./homemanager
  ];
}
