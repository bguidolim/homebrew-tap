class ManagedClaudeStack < Formula
  desc "Configure Claude Code with MCP servers, plugins, skills, and hooks"
  homepage "https://github.com/bguidolim/mcs"
  url "https://github.com/bguidolim/mcs/releases/download/2026.3.2/mcs-2026.3.2-macos-universal.tar.gz"
  sha256 "5eab7ecc86c32423df98f80f9c4375deaddcc46864200502ddb860547a35c1a4"
  version "2026.3.2"
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
