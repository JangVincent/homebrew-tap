cask "coagent-app" do
  version "0.1.16"
  sha256 "d86fc9f0806e9d1d8925a942c7dfa252b503f9e3590df530c815a1b13a0f268c"

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
