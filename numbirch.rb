class Numbirch < Formula
  desc "C++ library providing numerical kernels and copy-on-write arrays"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/numbirch-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "b61af0e2cabe868d02152016c30d889588738e278809b3a755512817345f3bfa"
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
