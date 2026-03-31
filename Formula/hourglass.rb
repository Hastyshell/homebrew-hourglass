class Hourglass < Formula
  desc "Time, measured in tokens."
  homepage "https://github.com/Hastyshell/hourglass"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-aarch64.tar.gz"
      sha256 "99b0b2c21122dd295fec6b3b182a67a774e21bd1298171545e78fd87d6fe8d22"
    end
    on_intel do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-x86_64.tar.gz"
      sha256 "13f3afc74fc60be55e9e41fbe6e8760b457cd8f88222be9f9597a03f82e4a74f"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    assert_match "hourglass", shell_output("#{bin}/hourglass --help")
  end
end
