class Timeout < Formula
  desc "Simple timeout command implementation"
  homepage "https://github.com/aisk/timeout"
  url "https://github.com/aisk/timeout/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "8859dbd3860f9046cc2eb9ca213eceba03dd2a0889623a4d4b919e8b54d70362"
  license "GPL-2.0-only"
  head "https://github.com/aisk/timeout.git", branch: "master"

  bottle do
    root_url "https://github.com/aisk/homebrew-tap/releases/download/timeout-0.1.2"
    rebuild 1
    sha256 cellar: :any, arm64_sonoma: "3e7c7a8de6233e4d20c0a7cc2514cbab6585f9541f1c97b1b473677054a3f952"
    sha256 cellar: :any, x86_64_linux: "2073ec803a8b2741d9d59fc50f2913611099a6b193ca073c7d96281416d5bc53"
  end

  depends_on "ghc" => :build
  depends_on "gmp"

  uses_from_macos "libffi"

  def install
    system "make", "GHC_FLAGS=-static -threaded -Wall"
    bin.install "timeout"
  end

  test do
    system bin/"timeout", "1", "true"
    shell_output("#{bin}/timeout 1 sleep 5", 124)
  end
end
