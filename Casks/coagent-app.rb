cask "coagent-app" do
  version "0.1.18"
  sha256 "467b82ed8d3e39bb1010866ffcf4dbcb48d98728a3c7fafc34afbb38e4770934"

  url "https://github.com/JangVincent/coagent-app/releases/download/v#{version}/coagent-#{version}-arm64.dmg"
  name "Coagent"
  desc "Desktop app for multi-participant chat for Claude Code agents"
  homepage "https://github.com/JangVincent/coagent-app"

  depends_on arch: :arm64

  app "coagent.app"

  zap trash: [
    "~/Library/Application Support/coagent",
    "~/Library/Preferences/com.vincent.coagent.plist",
  ]
end
