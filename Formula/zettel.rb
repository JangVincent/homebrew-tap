class Zettel < Formula
  desc "Terminal-based Zettelkasten knowledge management system"
  homepage "https://github.com/JangVincent/zettelkasten-cli"
  license "MIT"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/JangVincent/zettelkasten-cli/releases/download/v0.2.9/zettel-darwin-arm64.tar.gz"
      sha256 "97841dd55f0559e2daa357f5ca351f7bba8a813bb7a1ea528f5c6882510bd30c"
    end
    on_intel do
      url "https://github.com/JangVincent/zettelkasten-cli/releases/download/v0.2.9/zettel-darwin-x64.tar.gz"
      sha256 "dddb5268db17293f41c578f3537b40ddadbaac4b9970030b56438f8345f986ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JangVincent/zettelkasten-cli/releases/download/v0.2.9/zettel-linux-arm64.tar.gz"
      sha256 "0bb96d82fa57b89e6e0a2ccad7740c68360f6502cd45e479c56cd3d7218d2777"
    end
    on_intel do
      url "https://github.com/JangVincent/zettelkasten-cli/releases/download/v0.2.9/zettel-linux-x64.tar.gz"
      sha256 "05ceb92201a247474702602ef255b393140ce03e499ac5a26306ae721b4ab140"
    end
  end

  def install
    bin.install "zettel"
    (share/"zettel").install "web-dist"
  end

  test do
    system "#{bin}/zettel", "--version"
  end
end
