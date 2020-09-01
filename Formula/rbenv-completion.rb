class RbenvCompletion < Formula
  desc "Completion for rbenv"
  homepage "https://github.com/rbenv/rbenv"
  url "https://github.com/rbenv/rbenv/archive/v1.1.2.tar.gz"
  sha256 "80ad89ffe04c0b481503bd375f05c212bbc7d44ef5f5e649e0acdf25eba86736"
  license "MIT"
  head "https://github.com/rbenv/rbenv.git"

  bottle :unneeded

  def install
    bash_completion.install "completions/rbenv.bash" => "rbenv"
    zsh_completion.install "completions/rbenv.zsh" => "_rbenv"
  end

  test do
    assert_match "-F _rbenv",
      shell_output("source #{bash_completion}/rbenv && complete -p rbenv")
  end
end
