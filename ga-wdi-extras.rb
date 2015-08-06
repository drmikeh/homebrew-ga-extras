class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.7.tar.gz"
  version "0.1.7"
  sha256 "d2033972aefcd70fc2f07fa5dd938088ada6e435135cfc7f4f1bb8ac2669ebe6"
  head 'https://github.com/drmikeh/ga-git-extras.git', branch: 'master'

  # Don't take +x off these files
  skip_clean 'bin'

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/wdi-init", "--version"
  end
end
