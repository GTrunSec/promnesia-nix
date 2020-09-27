let
  src = builtins.fetchTarball {
    url    = "https://github.com/NixOS/nixpkgs/tarball/adfe1d8d8d2c203c2718d03db60d71494d99defd";
    sha256 = "0i3p45q9may4b81biizj2ngsw1ckwfv5mlp5hhrjacjwnl9iib2d";
  };
in
import src
