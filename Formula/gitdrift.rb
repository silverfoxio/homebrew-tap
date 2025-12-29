class Gitdrift < Formula
  desc "CLI tool to detect missing Git commits across branches"
  homepage "https://github.com/silverfoxio/gitdrift"
  version "0.2.0-rc.6"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.6-aarch64-apple-darwin.tar.gz"
      sha256 "370ffd954a4d93d3c1213effff5c3a62d822499a8b47bdaaff64ed9caa886d0d"
    else
      url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.6-x86_64-apple-darwin.tar.gz"
      sha256 "213b3df99ca6147a995d38ef60c187695b20440e4ab6fde313c3eca3fb2b2f2c"
    end
  end

  # on_linux do
  #   if Hardware::CPU.arm?
  #     url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.6-aarch64-unknown-linux-gnu.tar.gz"
  #     sha256 ""
  #   else
  #     url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.6-x86_64-unknown-linux-gnu.tar.gz"
  #     sha256 ""
  #   end
  # end

  def install
    bin.install "gitdrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitdrift --version")
  end
end
