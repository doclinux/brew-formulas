require 'formula'

class Furl < Formula
  homepage 'https://github.com/bingos/furl/tarball/master'
  url 'file:///Users/tchurchill/work/furl-2.1.tar.gz'
  sha256 '6ca6138c4afedacdb192e3d06f767d1679715694f377c65ca2a230fe111bb1e3'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "furl"
  end
end
