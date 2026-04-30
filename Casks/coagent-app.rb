cask "coagent-app" do
  version "0.1.19"
  sha256 "4aec6b1e1fd11802c4ce65f734799d53a6de1a3afb1d08543f01397f3ca45bf4"

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
