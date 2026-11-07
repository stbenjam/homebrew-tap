class Skillsaw < Formula
  include Language::Python::Virtualenv

  desc "Linter for agent skills, plugins, and AI coding assistant context"
  homepage "https://github.com/stbenjam/skillsaw"
  url "https://files.pythonhosted.org/packages/3a/df/2385f52bee63a656d6d87b5dee33c5ba64bdb58dc77f8b7bcf6ba4e94a22/skillsaw-0.23.0.tar.gz"
  sha256 "2aba429ff644d4f67144fb017f5eac38e78b679cde7b1be4a20cadf0bd40ce26"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/stbenjam/homebrew-tap/releases/download/skillsaw-0.23.0"
    sha256 cellar: :any, arm64_sequoia: "7946eace91b53fef307e91f5bc5fb2d35c8245bdb81282495fdd4e234da1a2f7"
    sha256 cellar: :any, x86_64_linux:  "99bf96756fb9c0715525576c50160bc326fdbd524e1441e0c1b975edbed21b1c"
  end

  depends_on "rust" => :build
  depends_on "libyaml"
  depends_on "python@3.14"

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "bracex" do
    url "https://files.pythonhosted.org/packages/4d/fc/137095eb2f24ccf0b4db196abd9f5cfe74398a834af51d4bc4876e0beaf0/bracex-3.2.1.tar.gz"
    sha256 "07a9b2100ceecc0c24afa1a1714bf8d4a6abb43d592939455f662b682ac9baa4"
  end

  resource "json5" do
    url "https://files.pythonhosted.org/packages/16/1f/58a4d7ee466f81bc3c7337036380fc6d49de3afb7855d74f8121b1e89b32/json5-0.17.3.tar.gz"
    sha256 "8d0278ad34ebaa9c3af76d9519274811830224a2d1cd5af156dbd067f461b8a4"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/5a/82/42f767fc1c1143d6fd36efb827202a2d997a375e160a71eb2888a925aac1/pathspec-1.1.1.tar.gz"
    sha256 "17db5ecd524104a120e173814c90367a96a98d07c45b2e10c2f3919fff91bf5a"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/42/68/3bd46b8a5e01d3c2ebdf9c5e9497912e3fe0cde02bac21a7130ca866e403/rpds_py-2026.9.1.tar.gz"
    sha256 "4793ef7f78268b124b73fa933440f01d258bbae01de9fa53e9080c9ab0425a12"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  resource "wcmatch" do
    url "https://files.pythonhosted.org/packages/bd/07/b7a9162a804bc0f7d03fe84c93e374d3e1c4d828043d5f9b797f7d4e30e0/wcmatch-11.2.tar.gz"
    sha256 "1605bde546fbde4c063628c7d89eda486909fd4337e51d73a873987fbcb2554c"
  end

  def install
    virtualenv_install_with_resources
    # Deprecated alias for the old project name; new installs get only skillsaw.
    (bin/"claudelint").unlink
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillsaw --version")

    (testpath/"skills/hello/SKILL.md").write <<~MARKDOWN
      ---
      name: hello
      description: Greets the user by name. Use when the user asks for a greeting.
      ---

      # Hello

      Greet the user by name and ask how you can help.
    MARKDOWN
    system bin/"skillsaw", "lint", testpath
  end
end
