class Timeout < Formula
  desc "Simple timeout command implementation"
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "94edef9eae4c21a36be42b2769b5b2b6b2fc57f73590096ef12eaff33de6ee71"
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
