class Timeout < Formula
  desc "Simple timeout command implementation"
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "907de04f999b7365ce13028b09f4a2eb7320d8b8266824be45a98810eda902e7"
  head "https://github.com/aisk/timeout.git", branch: "master"
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
