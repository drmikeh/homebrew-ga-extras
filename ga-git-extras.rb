class GaGitExtras < Formula
  homepage 'https://github.com/drmikeh/ga-git-extras'
  url 'https://github.com/drmikeh/ga-git-extras/archive/0.1.0.tar.gz'
  sha256 'e225978ebc06acf7a5a8cd6ce41054c984834edfff5142b384eb50f9fee71bb4'

  head 'https://github.com/drmikeh/ga-git-extras.git', :branch => 'master'

  # Don't take +x off these files
  skip_clean 'bin'

  def install
    inreplace 'Makefile', %r|\$\(DESTDIR\)(?=/etc/bash_completion\.d)|, '$(DESTDIR)$(PREFIX)'
    system "make", "PREFIX=#{prefix}", "install"
  end
end
