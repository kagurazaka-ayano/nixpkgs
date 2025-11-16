{
  buildGoModule,
  fetchFromGitHub,
  lib,
}:
let
  pname = "stormy";
  version = "0.3.3";
in
buildGoModule {
  inherit pname version;

  src = fetchFromGitHub {
    owner = "ashish0kumar";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-9QEjr4EFHmAsBx0z0/Zj7uyX12rZYekCXXGLBW1s91Q=";
  };
  vendorHash = "sha256-iwgGAJRygi+xS5eorZ8wyR6pMDZvmGFXBbCiFazyaHw=";
  meta = with lib; {
    homepage = "https://github.com/ashish0kumar/stormy";
    description = "Minimal, customizable, and neofetch-like weather CLI";
    maintainers = with maintainers; [
      ayano-kagurazaka
    ];
    license = licenses.mit;
    mainProgram = pname;
  };
}
