class Numbirch < Formula
  desc "C++ library providing numerical kernels and copy-on-write arrays"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/numbirch-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "c226a909f0a0e2ceb62aa99ea82bf72c94393c830614f425f7785b1d301a05c1"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libomp"
  depends_on "eigen"

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
