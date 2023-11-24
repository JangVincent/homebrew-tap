class Tle < Formula
  desc "CLI for view block-chain transaction"
  homepage "https://github.com/phantola/txview"
  url "https://github.com/Phantola/txview/releases/download/Latest/txview-0.1.0-apple-silicon.tar.gz"
  sha256 "979c63ccb341b1d919b9884eaf017e73c9388852"
  version "0.1.1"

  def install
    bin.install "txview"
  end
end
