#!/usr/bin/env nix-shell
#!nix-shell --pure -i runghc -p "haskellPackages.ghcWithPackages (pkgs: [ pkgs.turtle ])"

module Demo where

main = do
    -- do stuff
    putStrLn "Hello world from a distributable Haskell script!"
