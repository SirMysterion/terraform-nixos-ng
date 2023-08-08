{ modulesPath, ... }:

{ imports = [
    "${modulesPath}/virtualisation/amazon-image.nix"
  ];

  system.stateVersion = "23.05";
}

