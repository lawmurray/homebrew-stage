class Numbirch < Formula
  desc "C++ library providing numerical kernels and copy-on-write arrays"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/numbirch-2.1.0.tar.gz"
  version "2.1.0"
  sha256 "669f354ac292f84c1ca076da4c378d818b37e02faa1c993300c79f53052a2120"
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
