class Hourglass < Formula
  desc "Time, measured in tokens."
  homepage "https://github.com/Hastyshell/hourglass"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-aarch64.tar.gz"
      sha256 "850ec83d3dd90beacfd331da2637806e1610befb117d5ebae47519006659ccee"
    end
    on_intel do
      url "https://github.com/Hastyshell/hourglass/releases/download/v#{version}/hourglass-macos-x86_64.tar.gz"
      sha256 "8dbf0db188a6ce8d9486ee6d95f71a6cbde35274208a4370116c52e3e11a0022"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    assert_match "hourglass", shell_output("#{bin}/hourglass --help")
  end
end
