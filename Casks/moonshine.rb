cask "moonshine" do
  version "0.1.5"
  sha256 "2bab928a5567989d5d35b446ee4c6ba0b8f72cdb9b90f3e92174ecfd5a020b47"

  url "https://github.com/JangVincent/moonshine/releases/download/v#{version}/moonshine_#{version}_aarch64.dmg"
  name "Moonshine"
  desc "Distill thoughts into aged knowledge - note and knowledge management app"
  homepage "https://github.com/JangVincent/moonshine"

  depends_on arch: :arm64

  app "Moonshine.app"

  zap trash: [
    "~/Library/Application Support/Moonshine",
    "~/Library/Preferences/com.moonshine.app.plist",
  ]
end
