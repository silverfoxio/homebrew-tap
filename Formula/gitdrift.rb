class Gitdrift < Formula
  desc "CLI tool to detect missing Git commits across branches"
  homepage "https://github.com/silverfoxio/gitdrift"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/silverfoxio/gitdrift/releases/download/v0.1.0/gitdrift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ARM_MAC_SHA256"
    else
      url "https://github.com/silverfoxio/gitdrift/releases/download/v0.1.0/gitdrift-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "INTEL_MAC_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/silverfoxio/gitdrift/releases/download/v0.1.0/gitdrift-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ARM_LINUX_SHA256"
    else
      url "https://github.com/silverfoxio/gitdrift/releases/download/v0.1.0/gitdrift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "INTEL_LINUX_SHA256"
    end
  end

  def install
    # Binary is in gitdrift-v{version}-{target}/ directory after extraction
    bin.install Dir["gitdrift-v*-*/gitdrift"].first => "gitdrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitdrift --version")
  end
end