require 'formula'
class GaGitExtras < Formula
  homepage "https://github.com/drmikeh/ga-git-extras"
  url "https://github.com/drmikeh/ga-git-extras/archive/0.1.0.tar.gz"
  sha256 "1db2d87d14d845b9757225925e6ad7e58ced939ba8179b2a501144eeab34760e"

  head "https://github.com/drmikeh/ga-git-extras.git", :branch=> "master"

  # Don't take +x off these files
  skip_clean "bin"

  def install
    inreplace "Makefile", %r{|\$\(DESTDIR\)(?=/etc/bash_completion\.d)|, "$(DESTDIR)$(PREFIX)"}
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ga-git-extras`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/git", "hwk-submit", "--help"
  end
end
