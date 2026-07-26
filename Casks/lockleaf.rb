cask "lockleaf" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "68b0bbff74de5f5dc9bd94caf9c5181355e17b382d5457a1da1c205f0ea46d4a",
         intel: "163d200fbb277b98a7802301162001df4c0776e9be9cde92de5d85d1a10c4b10"

  url "https://github.com/Tyrell04/Lockleaf/releases/download/v#{version}/Lockleaf_#{version}_#{arch}.dmg"
  name "Lockleaf"
  desc "Minimal, pain-free OpenPGP utility"
  homepage "https://github.com/Tyrell04/Lockleaf"

  app "Lockleaf.app"

  zap trash: "~/Library/Application Support/com.tyrell04.lockleaf"

  caveats <<~EOS
    Lockleaf is not signed or notarized by Apple. Gatekeeper will refuse to
    open it unless the quarantine flag is removed after install:
      xattr -dr com.apple.quarantine /Applications/Lockleaf.app
    (On Homebrew 5 or older you can instead install with --no-quarantine.)
  EOS
end
