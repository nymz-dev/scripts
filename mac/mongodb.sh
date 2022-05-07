#!/bin/bash
# Requirements: Xcode Command Line Tools and Homebrew

xcode-select --install
brew tap mongodb/brew
brew update
brew install mongodb-community
brew services start mongodb-community