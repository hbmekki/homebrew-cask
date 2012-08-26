require 'formula'

class BrewCask < Formula
  homepage 'https://github.com/phinze/homebrew-cask/'
  head 'https://github.com/phinze/homebrew-cask.git'

  skip_clean :all

  def install
    prefix.install_p 'lib', 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
