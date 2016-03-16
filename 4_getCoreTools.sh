#!/usr/bin/bash

# install iTerm, Atom (text editors)
brew cask install iterm2
brew cask install atom

# install Java and Xquartz
brew install Caskroom/cask/xquartz
brew cask install java

# more scientific computing tools
brew install pandoc cairo qt node
brew install libtiff libjpeg webp little-cms2
brew install graphviz --with-librsvg --with-x11
brew install imagemagick --with-fftw --with-librsvg --with-x11
