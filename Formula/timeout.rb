class Timeout < Formula
  desc "Simple timeout command implementation"
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "759e441506912632c6a27311edd5f167ce8f004d8a3ac2c408f58453e0f47be7"
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
