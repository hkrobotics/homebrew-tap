class RouterDash < Formula
  desc "Terminal dashboard for the home router"
  homepage "https://github.com/hkrobotics/homebrew-tap"
  url "https://github.com/hkrobotics/homebrew-tap/releases/download/router-dash-v0.2.0/router-dash-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "c8541519fa01f25432e9e66742e375dd59cea64414a28c788ae77be557f101b0"
  version "0.2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "router-dash"
  end

  test do
    assert_match "router-dash 0.2.0", shell_output("#{bin}/router-dash --version")
  end
end
