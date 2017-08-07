#!/bin/sh

# Resolve all dependencies which are required to run.
./bootstrap.sh

# Exec production lane
bundle exec fastlane production
