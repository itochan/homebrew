require 'formula'

class Screen < Formula
  url 'ftp://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz'
  homepage ''
  md5 '8506fd205028a96c741e4037de6e3c42'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--enable-colors256",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test screen`. Remove this comment before submitting
    # your pull request!
    system "false"
  end

  def patches
    "http://trac.macports.org/raw-attachment/ticket/20862/screen-4.0.3-snowleopard.patch"
  end
end
