class CoagentCli < Formula
  desc "CLI for multi-participant chat with Claude Code agents"
  homepage "https://github.com/JangVincent/coagent"
  url "https://registry.npmjs.org/@vincentjang/coagent/-/coagent-0.5.10.tgz"
  sha256 "f23f9ca6789fee1c1b03ceda701150f3084c313b023236946e5262c097fb676a"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/coagent", "--version"
  end
end
