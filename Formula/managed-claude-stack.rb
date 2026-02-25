class ManagedClaudeStack < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/mcs"
  url "https://github.com/bguidolim/mcs/releases/download/2026.2.25/mcs-2026.2.25-macos-universal.tar.gz"
  sha256 "618ec8e7579e2e035b0283d19b8119fd0916e8ab90a067795c8737c0fb437498"
  version "2026.2.25"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
    bin.install_symlink libexec/"mcs" => "managed-claude-stack"
  end

  test do
    assert_match "Managed Claude Stack", shell_output("#{bin}/mcs --help")
  end
end
