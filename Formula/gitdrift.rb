class Gitdrift < Formula
  desc "CLI tool to detect missing Git commits across branches"
  homepage "https://github.com/silverfoxio/gitdrift"
  version "0.2.0-rc.5"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.5-aarch64-apple-darwin.tar.gz"
      sha256 "8f8432d022feff04ca1335767db7095298f32e844797eb5e3b7fa9cbadb7c7a1"
    else
      url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.5-x86_64-apple-darwin.tar.gz"
      sha256 "80ca1765db097281c788e4e9279dece335a94c63375f7f0cd1b772b4fa4ef5e3"
    end
  end

  # on_linux do
  #   if Hardware::CPU.arm?
  #     url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.5-aarch64-unknown-linux-gnu.tar.gz"
  #     sha256 ""
  #   else
  #     url "https://pub-4b1169ca1939406a848f60bd3651c089.r2.dev/gitdrift-v0.2.0-rc.5-x86_64-unknown-linux-gnu.tar.gz"
  #     sha256 ""
  #   end
  # end

  def install
    bin.install Dir["gitdrift-v*-*/gitdrift"].first => "gitdrift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitdrift --version")
  end
end
