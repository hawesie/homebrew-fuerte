
require 'formula'

class Swigwx < Formula
  url 'git://github.com/wg-debs/swig-wx.git', {:using => :git, :tag => 'upstream/1.3.29'}
  homepage 'http://www.swig.org'
  version '1.3.29'




  def install
    ENV.universal_binary
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make"    
    system "make install"    
  end

end
