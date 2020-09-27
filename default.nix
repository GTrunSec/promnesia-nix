let
  overlays = [
    (import ./python/python-packages-overlay.nix)
  ];

  pkgs = import ./python/nixpkgs.nix {inherit overlays;};

in
pkgs.buildEnv {
    name = "promnesia-env";
    paths = with pkgs; [
      (pkgs.python3.withPackages (ps: [ ps.promnesia
                                        ps.HPI
                                        ps.orgparse
                                      ]))
    ];
}
