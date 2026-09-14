class Membirch < Formula
  desc "C++ library of smart pointer types for object-level copy-on-write"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/membirch-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "0f484887dcb6706e6902121365b1dd97257b9ad5c9bb70c578ba7d29b492cabf"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libomp"

  def install
    # see internal docs of birch driver program for explanation of OpenMP args
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
