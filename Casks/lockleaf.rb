cask "lockleaf" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "a8e2fbda2b977e8fd07bc006178ecabdc77399de9f55dc1c51078d83bd36179f",
         intel: "6d92fe9d25938a13089f90c0480d8f56342629a1ffe0643d4b366dd21393eb17"

  url "https://github.com/Tyrell04/Lockleaf/releases/download/v#{version}/Lockleaf_#{version}_#{arch}.dmg"
  name "Lockleaf"
  desc "Minimal, pain-free OpenPGP utility"
  homepage "https://github.com/Tyrell04/Lockleaf"

  app "Lockleaf.app"

  zap trash: "~/Library/Application Support/com.tyrell04.lockleaf"

  caveats <<~EOS
    Lockleaf is not signed or notarized by Apple. Gatekeeper will refuse to
    open it unless it was installed with:
      brew install --cask --no-quarantine Tyrell04/tap/lockleaf
    or the quarantine flag is removed after install:
      xattr -dr com.apple.quarantine /Applications/Lockleaf.app
  EOS
end
