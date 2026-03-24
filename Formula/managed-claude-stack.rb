class ManagedClaudeStack < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/mcs-cli/mcs"
  url "https://github.com/mcs-cli/mcs/releases/download/2026.3.24/mcs-2026.3.24-macos-universal.tar.gz"
  sha256 "9a39781ee594fb6c6169cfb3e415143c574e4ed16e40ec3bf0af488ceb366b0d"
  version "2026.3.24"
  license "MIT"

  def install
    libexec.install "mcs"
    bin.install_symlink libexec/"mcs"
  end

  def caveats
    <<~EOS
      mcs has moved! Please switch to the new tap:
        brew untap bguidolim/tap
        brew install mcs-cli/tap/mcs
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcs --version")
  end
end
