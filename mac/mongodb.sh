# requires Xcode Command Line Tools and Homebrew

xcode-select --install
brew tap mongodb/brew
brew update
brew install mongodb-community
brew services start mongodb-community

# To stop brew services stop mongodb-community