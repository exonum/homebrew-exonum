class ExonumJavaAT0100 < Formula
  desc "Java runtime for Exonum blockchain"
  homepage "https://exonum.com"
  url
"https://github.com/exonum/exonum-java-binding/releases/download/ejb%2Fv0.10.0/exonum-java-0.10.0-release-Mac.zip"
  sha256 "f61e366921451d1edd952c8b644a63c0ad0403ed47e42d1141674d357b67c1a1"

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
