class Deta < Formula
  desc "Command-line interface for managing Deta micros and deployments"
  homepage "https://deta.sh"
  url "https://github.com/deta/deta-cli/releases/download/v1.1.2-beta/deta-x86_64-darwin.zip"
  version "1.1.2-beta"
  sha256 "cbc8fe72a6d359b437677bd25033e73dc4591cef897b5b43724dc0471188f29f"
  license ""

  def install
    bin.install "deta"
  end
end
