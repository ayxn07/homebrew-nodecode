class Nodecode < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/ayxn07/nodecode"
  version "1.0.0"
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/v1.0.0/nodecode-darwin-arm64.zip"
      sha256 "efcd0683d71f3317da016a6d6005e2e85edc0131149ca1ebaaa0563a6a4766f4"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/v1.0.0/nodecode-darwin-x64-baseline.zip"
      sha256 "e46e3ea1079f71ce7702296bd366e509ad636302245cd0f3aa41900d62d72dce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/v1.0.0/nodecode-linux-arm64.tar.gz"
      sha256 "9cb738721c0b3eefb175f921a3f92a63d35856457f230a572c568aaf24fee0ab"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/v1.0.0/nodecode-linux-x64-baseline.tar.gz"
      sha256 "b7a4a288b5e85ef9bdab25df22e1a1cd873822a7feb8b975c1f39a697e3e3c99"
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
