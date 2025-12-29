# Homebrew Tap for GitDrift

This is the official Homebrew tap for [GitDrift](https://github.com/silverfoxio/gitdrift), a CLI tool to detect missing Git commits across branches.

## Installation

```bash
# Add the tap
brew tap silverfoxio/tap

# Install gitdrift
brew install gitdrift
```

Or install directly without tapping:

```bash
brew install silverfoxio/tap/gitdrift
```

## Verification

After installation, verify it works:

```bash
gitdrift --version
```

## Upgrade

```bash
brew upgrade gitdrift
```

## Uninstall

```bash
brew uninstall gitdrift
brew untap silverfoxio/tap  # Optional: remove the tap
```

## Issues

If you encounter any issues, please report them at:
- GitDrift Issues: https://github.com/silverfoxio/gitdrift/issues
- Tap Issues: https://github.com/silverfoxio/homebrew-tap/issues
