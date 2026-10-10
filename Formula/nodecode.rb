class Nodecode < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/ayxn07/nodecode"
  version "1.0.1"
  revision 1
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-arm64.zip"
      sha256 "787dc3ff9a1006d80cce0d3ea60211ef86b0adc3b9f77dccd462a2793d1ecdb8"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-x64-baseline.zip"
      sha256 "5f756664d1d507e165a3c69ca3f5181772bcc2b6afb8b9b07265692dff6f9eea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-arm64.tar.gz"
      sha256 "c7cfe9543c07d5257eeb254b3550b27f11fe98e73d95cb6598fa1da4601c1a70"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-x64-baseline.tar.gz"
      sha256 "64eb793af3278e6b60ece524709585294cd20ad5e5b8926a22ee162b1d6ca0e0"
    end
  end

  def install
    bin.install "nodecode"
    prefix.install "LICENSE"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nodecode --version").strip
  end
end
