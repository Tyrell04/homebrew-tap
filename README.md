# homebrew-tap

Homebrew tap for [Lockleaf](https://github.com/Tyrell04/Lockleaf).

## Install

```bash
brew tap tyrell04/tap
brew install --cask lockleaf
xattr -dr com.apple.quarantine /Applications/Lockleaf.app
```

The `xattr` step is needed because the app is not notarized by Apple. On Homebrew ≥ 6, confirm the tap-trust prompt on first use.

The cask in `Casks/lockleaf.rb` is updated automatically by the
[Lockleaf release workflow](https://github.com/Tyrell04/Lockleaf/blob/main/.github/workflows/homebrew.yml)
whenever a release is published.
