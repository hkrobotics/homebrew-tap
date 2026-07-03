class CodexUsage < Formula
  desc "Terminal dashboard for Codex usage and rate limits"
  homepage "https://github.com/hkrobotics/codex-usage"
  url "https://github.com/hkrobotics/codex-usage/releases/download/v1.0.0/codex-usage"
  sha256 "5b064d6a3021bfcec56f313ec605f9e0203d00788bc0af870eb3a2cd13bc9f0b"
  license "MIT"

  depends_on "jq"
  uses_from_macos "curl"

  def install
    bin.install "codex-usage"
  end

  test do
    assert_match "codex-usage 1.0.0", shell_output("#{bin}/codex-usage --version")
  end
end
