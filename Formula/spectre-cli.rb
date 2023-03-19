class SpectreCli < Formula
  desc "Password cipher"
  homepage "https://spectre.app/"
  license "GPL-3.0-or-later"
  head "https://gitlab.com/spectre.app/cli.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "libsodium"

  def install
    system "cmake", ".", *std_cmake_args
    system "./build"
    bin.install "spectre"
    bash_completion.install "spectre.completion.bash" => "spectre"
  end
end
