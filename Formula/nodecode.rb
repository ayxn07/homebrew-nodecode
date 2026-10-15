class Nodecode < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/ayxn07/nodecode"
  version "1.0.2"
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.2/nodecode-darwin-arm64.zip"
      sha256 "d2ae618a864c4c8790cbeff61cce90e3494f6853f744dc89ae535ffaef8a362e"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.2/nodecode-darwin-x64-baseline.zip"
      sha256 "b3153bd0e55fd891e06be8d3979435c37f60dee22b70b3e011170b02bf7cbf30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.2/nodecode-linux-arm64.tar.gz"
      sha256 "9b6584e4a6c65de30806bba3b46d266da7c09d53030afb766ab251b652429754"
    end
    on_intel do
      url "https://github.com/ayxn07/nodecode/releases/download/nodecode-v1.0.2/nodecode-linux-x64-baseline.tar.gz"
      sha256 "9541bd19917924e6c79c7ecacce0504b034d29f7964ffa075ca0160cb84d7f46"
    end
  end

  def install
    bin.install "nodecode"
    prefix.install "LICENSE"
  end

  def caveats
    <<~EOS
      Nodecode checks terminal image support when the TUI starts.
      It installs Ghostty on macOS or Foot on Linux Wayland when needed.
      Set NODECODE_NO_TERMINAL_MIGRATION=1 to keep your current terminal.
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nodecode --version").strip
  end
end
