class ManagedClaudeStack < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/mcs"
  url "https://github.com/bguidolim/mcs/releases/download/2026.3.17/mcs-2026.3.17-macos-universal.tar.gz"
  sha256 "ae89dae9a7ae9030dc151fe185bae04fe715c3c569f05eba6966125d79f1c42e"
  version "2026.3.17"
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
