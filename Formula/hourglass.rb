class Hourglass < Formula
  desc "Time, measured in tokens."
  homepage "https://github.com/Hastyshell/hourglass"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-aarch64.tar.gz"
      sha256 "3d5c25fba1081102558c977a98763747c3f4694edbb647072a403123acd5f235"
    end
    on_intel do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-x86_64.tar.gz"
      sha256 "ce8f7b7a158f53294adb830f7ab97d6f55d5c6f31d155ab45813586ed153aee2"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    assert_match "hourglass", shell_output("#{bin}/hourglass --help")
  end
end
