cask "coagent-app" do
  version "0.1.8"
  sha256 "dea4111108d91bdd9ac9ba4aa2775618b3169293c98ae2905f5c448fd353378c"

  url "https://github.com/JangVincent/coagent-desktop/releases/download/v#{version}/coagent-#{version}-arm64.dmg"
  name "Coagent"
  desc "Desktop app for multi-participant chat for Claude Code agents"
  homepage "https://github.com/JangVincent/coagent-desktop"

  depends_on arch: :arm64

  app "coagent.app"

  zap trash: [
    "~/Library/Application Support/coagent",
    "~/Library/Preferences/com.vincent.coagent.plist",
  ]
end
