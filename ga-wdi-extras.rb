class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.8.tar.gz"
  version "0.1.8"
  sha256 "67a531081b37665ad300e5a20250fb1163524856b8a6b59d2e3310caab93c3a9"
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
