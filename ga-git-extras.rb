class GaGitExtras < Formula
  homepage 'https://github.com/drmikeh/ga-git-extras'
  url 'https://github.com/drmikeh/ga-git-extras/archive/0.1.2.tar.gz'
  version "0.1.2"
  sha256 'aa1aa7d2df81559104842969a0e922f81f63111172dce7c31dd2204d63b7506a'
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
