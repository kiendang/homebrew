class JupyterCompletion < Formula
  desc "Bash and Zsh completion for Jupyter"
  homepage "https://jupyter.org/"
  url "https://github.com/jupyter/jupyter_core.git"

  bottle :unneeded

  def install
    bash_completion.install "examples/jupyter-completion.bash" => "jupyter"
    zsh_completion.install "examples/completions-zsh" => "_jupyter"
  end

  test do
    assert_match "-F _jupyter",
      shell_output("source #{bash_completion}/jupyter && complete -p jupyter")
  end
end
