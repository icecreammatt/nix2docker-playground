{
  inputs.nix2container.url = "github:nlewo/nix2container";

  outputs = { self, nixpkgs, nix2container }: let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
    nix2containerPkgs = nix2container.packages.x86_64-linux;
  in {
    packages.x86_64-linux.buildCommandName = nix2containerPkgs.nix2container.buildImage {
      name = "imageName";
      tag = "tagName";

      # Add packages to image
      copyToRoot = [
        pkgs.coreutils
      ];

      config = {
        entrypoint = ["${pkgs.bash}/bin/bash"];
      };
    };
  };
}
