class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.10.tar.gz"
  version "0.1.10"
  sha256 "f02701b53d6e37de94550fb8c3984a840d1f7bad531efbb2eda2eb7d7fba2368"
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
