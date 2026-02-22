class MyClaudeSetup < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/MyClaudeSetup"
  url "https://github.com/bguidolim/MyClaudeSetup/releases/download/2.0.1/mcs-2.0.1-macos-universal.tar.gz"
  sha256 "7e2294a5d1befb6e372762ee4a446eaa2637c85b40fee1712d343935c4b04aae"
  version "2.0.1"
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
