class CodexUsage < Formula
  desc "Terminal dashboard for Codex usage and rate limits"
  homepage "https://github.com/hkrobotics/codex-usage"
  url "https://github.com/hkrobotics/codex-usage/releases/download/v1.0.1/codex-usage"
  sha256 "29fbdde780eefabbd377fc1bf84273a45c944480b6040ab87e240bdc52ae46b3"
  license "MIT"

  depends_on "jq"
  uses_from_macos "curl"

  def install
    bin.install "codex-usage"
  end

  test do
    assert_match "codex-usage 1.0.1", shell_output("#{bin}/codex-usage --version")
  end
end
