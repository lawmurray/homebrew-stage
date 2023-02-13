class Membirch < Formula
  desc "C++ library of smart pointer types for object-level copy-on-write"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/membirch-2.1.0.tar.gz"
  version "2.1.0"
  sha256 "e49cf8b75ede397f09a76e1e94e7c1cea3174317b3bc55e4fd0d22b8cc03fc08"
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
