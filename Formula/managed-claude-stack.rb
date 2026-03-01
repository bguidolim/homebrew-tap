class ManagedClaudeStack < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/mcs"
  url "https://github.com/bguidolim/mcs/releases/download/2026.3.1/mcs-2026.3.1-macos-universal.tar.gz"
  sha256 "09c74f5fe74b6afa4db826e2e2aecc20224843301946fbeae707274934f5992c"
  version "2026.3.1"
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
