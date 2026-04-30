cask "moonshine" do
  version "0.1.6"
  sha256 "a3cefe5bcce560ff318b2c52fcd3e35a34720a547fb807b51092d38edda9abae"

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
