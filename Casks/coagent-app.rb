cask "coagent-app" do
  version "0.3.2"
  sha256 "311bc1bd884e9c3395b1baa4fc17cfdca6898f4bd6ab7bfbcb0a5691f56b004c"

  url "https://github.com/JangVincent/coagent-app/releases/download/v#{version}/coagent-#{version}-arm64.dmg"
  name "Coagent"
  desc "Desktop app for multi-participant chat with Claude Code and Codex agents"
  homepage "https://github.com/JangVincent/coagent-app"

  depends_on arch: :arm64

  app "coagent.app"

  zap trash: [
    "~/Library/Application Support/coagent",
    "~/Library/Preferences/com.vincent.coagent.plist",
  ]
end
