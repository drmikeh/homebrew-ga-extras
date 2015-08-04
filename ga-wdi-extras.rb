class GaWdiExtras < Formula
  desc "A set of scripts in a brew keg for use with General Assembly's WDI class."
  homepage "https://github.com/drmikeh/ga-wdi-extras"
  url "https://github.com/drmikeh/ga-wdi-extras/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "631c413d541df81ccca7db81eb231738b0f3e7fff591bad2109ca646fac14273"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/wdi-init", "--version"
  end
end
