class RouterDash < Formula
  desc "Terminal dashboard for the home router"
  homepage "https://github.com/hkrobotics/homebrew-tap"
  url "https://github.com/hkrobotics/homebrew-tap/releases/download/router-dash-v0.1.0/router-dash-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "4c5d8e66aa695167078eb9b582b4ab41bee7265ae77b953d2fcef3ac75694815"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "router-dash"
  end

  test do
    assert_match "router-dash 0.1.0", shell_output("#{bin}/router-dash --version")
  end
end
