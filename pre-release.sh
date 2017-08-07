#!/bin/sh

# Resolve all dependencies which are required to run.
./bootstrap.sh

# Exec pre-release lane
bundle exec fastlane pre_release
