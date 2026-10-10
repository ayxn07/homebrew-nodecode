class Nodecode < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/ayxn07/nodecode"
  version "1.0.1"
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-arm64.zip"
      sha256 "f7c837a23e2a694aa2e78f0b4bdd002f682d75b649dcb6416ed94d489fb3e100"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-x64-baseline.zip"
      sha256 "b2417bf30521abecdbb27f23bee06f3677ffcf7963b46710a6eafc8f6c68db4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-arm64.tar.gz"
      sha256 "6bc5875f665636ea02985acfdc2668da401b64e33b68f8eb72b947d096401dd3"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-x64-baseline.tar.gz"
      sha256 "7039dbf18f389e2835a345290527f73ac546e76300e7c441fdf95d29910d7f27"
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
