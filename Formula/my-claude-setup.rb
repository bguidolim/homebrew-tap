class MyClaudeSetup < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/MyClaudeSetup"
  url "https://github.com/bguidolim/MyClaudeSetup/releases/download/2026.2.24/mcs-2026.2.24-macos-universal.tar.gz"
  sha256 "2c991bd5f805902cc0fcb102af11c5897e4bb1e8b67c436e48cd151513f14dd2"
  version "2026.2.24"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
    bin.install_symlink libexec/"mcs" => "my-claude-setup"
  end

  test do
    assert_match "My Claude Setup", shell_output("#{bin}/mcs --help")
  end
end
