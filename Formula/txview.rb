class Txview < Formula
  desc "CLI for view block-chain transaction"
  homepage "https://github.com/phantola/txview"
  url "https://github.com/Phantola/txview/releases/download/Latest/txview-0.1.0-apple-silicon.tar.gz"
  sha256 "d9eb2fe03ed30f94f79c4de2c1678a1d837e4e8f"
  version "0.1.1"

  def install
    bin.install "txview"
  end
end
