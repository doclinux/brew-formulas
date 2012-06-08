require 'formula'

class Furl < Formula
  homepage 'https://github.com/bingos/furl/tarball/master'
  url 'file:///Users/terry/work/furl-2.1.tar.gz'
  sha1 '2b4635ba0e7e56c97056e7c364820daa41e8095c'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "furl"
  end
end
