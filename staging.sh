#!/bin/sh

# Resolve all dependencies which are required to run.
./bootstrap.sh

# git remote set-url origin git@github.com:Artogallery/ios.git

# Exec dev lane
bundle exec fastlane fabric_dev local:true
