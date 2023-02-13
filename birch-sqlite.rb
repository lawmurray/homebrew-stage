class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-stage/master/birch-sqlite-2.1.0.tar.gz"
  version "2.1.0"
  sha256 "8198734f97ab24987fe171b5e64ad2cbaa7e08338a397e05717b61debd6bbafe"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "sqlite"
  depends_on "birch-standard" => "2.1.0"

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
