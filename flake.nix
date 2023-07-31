{
  inputs.nixpkgs.url = github:NixOS/nixpkgs;
  outputs = { self, nixpkgs }:
  with import nixpkgs { 
    system = "x86_64-darwin";
  };
  {
    devShells."x86_64-darwin".default = mkShell.override { stdenv = llvmPackages_15.stdenv; } {
      packages = [llvmPackages_15.llvm];
    };
  };
}
