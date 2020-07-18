#!/bin/bash

set -eo pipefail

xcodebuild -workspace MarvelAPI.xcworkspace \
            -scheme MarvelAPI \
            -destination platform=iOS\ Simulator,name=iPhone\ 11 \
            clean test | xcpretty
