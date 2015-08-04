class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.3.tar.gz"
  version "0.1.3"
  sha256 "2285379cf4e49f63d2acf2069701f52442724df2d941c67a8a815bd4487e7b82"
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
