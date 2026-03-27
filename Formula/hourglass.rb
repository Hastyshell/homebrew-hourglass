class Hourglass < Formula
  desc "Time, measured in tokens."
  homepage "https://github.com/Hastyshell/hourglass"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_AARCH64"
    end
    on_intel do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    assert_match "hourglass", shell_output("#{bin}/hourglass --help")
  end
end
