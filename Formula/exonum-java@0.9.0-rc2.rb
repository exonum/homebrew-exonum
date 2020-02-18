class ExonumJavaAT090Rc2 < Formula
  desc "Java runtime for Exonum blockchain"
  homepage "https://exonum.com"
  url "https://github.com/exonum/exonum-java-binding/releases/download/ejb/v0.9.0-rc2/exonum-java-0.9.0-rc2-release-Darwin-x86_64.zip"
  sha256 "18abe93e1797dcce632ef4486e2059115fd337f36543694416b3801a66707dfb"

  depends_on :java
  depends_on "libsodium"

  def install
    prefix.install Dir["*"]
    ohai "Exonum Java App installed successfully."
    ohai "Installation location is #{prefix}"
    ohai "Use the following command to set EXONUM_HOME: "
    ohai "  export EXONUM_HOME=#{prefix}"
    ohai ""
    ohai "For basic documentation and usage instructions, see"
    ohai "https://exonum.com/doc/version/latest/get-started/java-binding"
  end
end

