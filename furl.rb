require 'formula'

class Furl < Formula
  homepage 'https://github.com/bingos/furl/tarball/master'
  url 'file:///Users/terry/work/furl-2.1.tar.gz'
  sha1 'ed27475de3917dcc9a61b7c82de4dfebd949e571'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "furl"
  end
end
