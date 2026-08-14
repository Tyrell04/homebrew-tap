cask "lockleaf" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "8da9b4acd6466922d9250ccbce1d05c6ff9f381afda4b83d790481a3126999d7",
         intel: "08578d17b40af3185f6a660d6f1c049653a7e367d2e31a8b4e086d513a2973e3"

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
