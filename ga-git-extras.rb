class GaGitExtras < Formula
  homepage 'https://github.com/drmikeh/ga-git-extras'
  url 'https://github.com/drmikeh/ga-git-extras/archive/0.1.1.tar.gz'
  sha256 ''

  head 'https://github.com/drmikeh/ga-git-extras.git', :branch => 'master'

  # Don't take +x off these files
  skip_clean 'bin'

  def install
    inreplace 'Makefile', %r|\$\(DESTDIR\)(?=/etc/bash_completion\.d)|, '$(DESTDIR)$(PREFIX)'
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/git", "hwk-submit", "--help"
  end

end
