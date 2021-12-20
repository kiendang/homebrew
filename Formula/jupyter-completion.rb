class JupyterCompletion < Formula
  desc "Bash and Zsh completion for Jupyter"
  homepage "https://jupyter.org/"
  url "https://files.pythonhosted.org/packages/78/fa/a949d1f0d2aaaef1890c2ab7fee9e58ed7cc6301ebc26c0afbffff4ea6e3/jupyter_core-4.9.1.tar.gz"
  sha256 "dce8a7499da5a53ae3afd5a9f4b02e5df1d57250cf48f3ad79da23b4778cd6fa"
  head "https://github.com/jupyter/jupyter_core.git"

  def install
    bash_completion.install "examples/jupyter-completion.bash" => "jupyter"
    zsh_completion.install "examples/completions-zsh" => "_jupyter"
  end

  test do
    assert_match "-F _jupyter",
      shell_output("source #{bash_completion}/jupyter && complete -p jupyter")
  end
end
