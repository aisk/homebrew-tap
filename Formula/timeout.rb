class Timeout < Formula
  desc "Simple timeout command implementation"
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "8859dbd3860f9046cc2eb9ca213eceba03dd2a0889623a4d4b919e8b54d70362"
  head "https://github.com/aisk/timeout.git", branch: "master"
  license "GPL-3.0"

  depends_on "ghc" => :build

  def install
    system "make", "GHC_FLAGS=-static -threaded -Wall"
    bin.install "timeout"
  end

  test do
    system "timeout", "1", "true"
  end
end
