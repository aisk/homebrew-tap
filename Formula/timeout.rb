class Timeout < Formula
  desc ""
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "4e927e0b10b5f2a20193b8bc237cda32c544820a43b3ac30cb58992cf2df0b16"
  license "GPL-3.0"

  depends_on "ghc"

  def install
    system "make"
    bin.install "timeout"
  end

  test do
    system "timeout", "1", "true"
  end
end
