
class ExonumJavaAT094Rc2 < Formula
  desc "Java runtime for Exonum blockchain"
  homepage "https://exonum.com"
  url "https://github.com/atrykush/gtgzrf/releases/download/${tag}/CIS_Ubuntu_Linux_18.04_LTS_Benchmark_v1.0.0.pdf"
  sha256 "b6bc4e496914b0127b399a03ce2fc5c237c51a23eae780be6e4c6d3427ad9e3b"
 
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

