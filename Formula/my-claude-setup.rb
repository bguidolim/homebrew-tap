class MyClaudeSetup < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/my-claude-setup"
  url "https://github.com/bguidolim/my-claude-setup/releases/download/2.0.0/mcs-2.0.0-macos-universal.tar.gz"
  sha256 "49589d67239abaac9f7acc83046c9143fae1a756ae436d3f46bfaaeb797a9d7b"
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
