with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "jekyll-env";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "jekyll-env";
  buildInputs = [env ruby];
  shellHook = ''
      exec jekyll serve --watch
    '';
}