class Txview < Formula
  desc "CLI for view block-chain transaction"
  homepage "https://github.com/phantola/txview"
  url "https://github.com/Phantola/txview/releases/download/Latest/txview-0.1.1-apple-silicon.tar.gz"
  sha256 "5f6be169240470e1cadc26cb7820e59092dc427983ca4708b6da2ba9c551acff"
  version "0.1.1"

  def install
    bin.install "txview"
  end
end
