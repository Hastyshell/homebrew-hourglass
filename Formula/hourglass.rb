class Hourglass < Formula
  desc "Time, measured in tokens."
  homepage "https://github.com/Hastyshell/hourglass"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-aarch64.tar.gz"
      sha256 "bd59986fcedc8863974bb4c87c4d1c524eb62a8c1c6a128c71f28ba7e9e2cd97"
    end
    on_intel do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-x86_64.tar.gz"
      sha256 "02a8cf4c9e202ecf6358b3d6d72f1e6042fb4fdc3e51c01aff8eb7eea3335757"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    assert_match "hourglass", shell_output("#{bin}/hourglass --help")
  end
end
