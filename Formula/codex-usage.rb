class CodexUsage < Formula
  desc "Terminal dashboard for Codex usage and rate limits"
  homepage "https://github.com/hkrobotics/codex-usage"
  url "https://github.com/hkrobotics/codex-usage/releases/download/v1.1.0/codex-usage"
  sha256 "fc7f2865bc97742a0d4d7c3d082bbc95f91ed5c696115f26e387a8caae7f785a"
  license "MIT"

  depends_on "jq"
  uses_from_macos "curl"

  def install
    bin.install "codex-usage"
  end

  test do
    assert_match "codex-usage 1.1.0", shell_output("#{bin}/codex-usage --version")
  end
end
