class MyClaudeSetup < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/MyClaudeSetup"
  url "https://github.com/bguidolim/MyClaudeSetup/releases/download/2.0.0/mcs-2.0.0-macos-universal.tar.gz"
  sha256 "38d14de239a6e71acba3f1a59a322271035d1f91d064b3e08cca330ea4df600e"
  version "2.0.0"
  license "MIT"

  def install
    libexec.install "mcs"
    libexec.install "my-claude-setup_mcs.bundle"
    bin.install_symlink libexec/"mcs"
    bin.install_symlink libexec/"mcs" => "my-claude-setup"
  end

  test do
    assert_match "My Claude Setup", shell_output("#{bin}/mcs --help")
  end
end
