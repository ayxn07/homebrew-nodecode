class Nodecode < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/ayxn07/nodecode"
  version "1.0.1"
  revision 2
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-arm64.zip"
      sha256 "235a6ac856ad936daca695f1ee07ee18acef5e94cf479afbf3c29c9d8883b89f"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-darwin-x64-baseline.zip"
      sha256 "46dd38ea98b209ff06ec71964c294724977cb51ec087e705a07161470ba32cfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-arm64.tar.gz"
      sha256 "4760b175a404a6cc549dd4d0b0169f2027ed56714f652da5bd899128c87c3db9"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.1/nodecode-linux-x64-baseline.tar.gz"
      sha256 "c88fc44f0dddd0f7a85cd2b3837af0ff3d6655700f455aba285bc47d79ec6040"
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
