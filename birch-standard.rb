class BirchStandard < Formula
  desc "Standard library of the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/birch-standard-2.1.0.tar.gz"
  version "2.1.0"
  sha256 "f20b54c511f25016d8c6929352006f4be289bbe95aba0eada3c4b914e99b6124"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libyaml"
  depends_on "membirch" => "2.1.0"
  depends_on "numbirch" => "2.1.0"

  def install
    system "./configure", "--disable-assert",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
