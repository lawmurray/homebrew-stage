class Doxide < Formula
  desc "Modern documentation for modern C++. Configure with YAML, output Markdown."
  homepage "https://doxide.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/doxide-0.9.0.tar.gz"
  version "0.9.0"
  sha256 "bf12b35f4f885fa2611165374da57f99fd9ea23c8f7344e98e01fd2c5a67610c"
  license "Apache-2.0"
  depends_on "cmake" => :build
  depends_on "cli11" => :build
  depends_on "libyaml"

  def install
    system "cmake", "-DCMAKE_BUILD_TYPE=Release", "."
    system "cmake", "--build", ".", "--config", "Release", "--verbose"
    system "cmake", "--install", ".", "--config", "Release", "--prefix", "#{prefix}", "--verbose"
  end

  test do
    system "true"
  end
end
