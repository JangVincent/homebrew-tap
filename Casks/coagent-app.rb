cask "coagent-app" do
  version "0.1.12"
  sha256 "d0da78733e59f3de7fb5dcd06a5044047929dc03db9958f6e19c550b85b94edd"

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
