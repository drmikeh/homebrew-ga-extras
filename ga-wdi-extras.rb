class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.6.tar.gz"
  version "0.1.6"
  sha256 "f3b6c38d4a352877a19dd608b5f7d53d338163eb0a58c95a2f3aa1269386a537"
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
