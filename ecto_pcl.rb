
require 'formula'

class EctoPcl < Formula
  url 'git://github.com/wg-debs/ecto_pcl-release.git', {:using => :git, :tag => 'upstream/0.3.1'}
  homepage 'http://ecto.willowgarage.com'
  version '0.3.1'

  depends_on 'boost'
  depends_on 'ros/fuerte/ecto' => :alt
  depends_on 'ros/fuerte/catkin' => :alt
  depends_on 'ros/fuerte/pcl' => :alt



  def install
    ENV.universal_binary
    system "mkdir build"
    system "cd build && cmake .. #{std_cmake_parameters}"
    system "cd build && make install"
  end

end
