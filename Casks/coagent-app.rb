cask "coagent-app" do
  version "0.3.1"
  sha256 "e005bca263fc34e90ec2084da063ade4378fd642f0b06f61644e266e367f4305"

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
