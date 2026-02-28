{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          gcc
          ac-library
          gnumake
        ];
        shellHook = ''
          export CPLUS_INCLUDE_PATH="${pkgs.ac-library}/include:$CPLUS_INCLUDE_PATH"
        '';
      };
    };
}
