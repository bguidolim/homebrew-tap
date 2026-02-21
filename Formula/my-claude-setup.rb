class MyClaudeSetup < Formula
  desc "My Claude Code setup with tweaks for iOS development"
  homepage "https://github.com/bguidolim/MyClaudeSetup"
  url "https://github.com/bguidolim/MyClaudeSetup/releases/download/2.0.0/mcs-2.0.0-macos-universal.tar.gz"
  sha256 "9224c329a0e5cb253fbd0b7c64cb7c8fe3dcdb4485e97b695b84f006bac8fc66"
  license "MIT"

  def install
    bin.install "mcs"
  end

  test do
    system "#{bin}/mcs", "--version"
  end
end