class Txview < Formula
  desc "CLI for view block-chain transaction"
  homepage "https://github.com/phantola/txview"
  url "https://github.com/Phantola/txview/releases/download/Latest/txview-0.1.1-apple-silicon.tar.gz"
  sha256 "7ca84abf61bda5b8fa473b6f887fc1cc6525cc6da705d5301c88296a04c3dbf8"
  version "0.1.2"

  def install
    bin.install "txview"
  end
end
