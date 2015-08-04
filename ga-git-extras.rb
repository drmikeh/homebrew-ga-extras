class GaGitExtras < Formula
  homepage 'https://github.com/drmikeh/ga-git-extras'
  url 'https://github.com/drmikeh/ga-git-extras/archive/0.1.2.tar.gz'
  version "0.1.2"
  sha256 'b9424c55331e21c6cad8d03b457805f584f72f8d30ab9033bc05a4003791a60f'
  head 'https://github.com/drmikeh/ga-wdi-extras.git', branch: 'master'

  # Don't take +x off these files
  skip_clean 'bin'

  def install
    inreplace 'Makefile', %r|\$\(DESTDIR\)(?=/etc/bash_completion\.d)|, '$(DESTDIR)$(PREFIX)'
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/git", "hwk-submit", "--version"
  end

end
