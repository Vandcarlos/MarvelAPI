#!/bin/bash

set -eo pipefail

xcodebuild -workspace Example/MarvelAPI.xcworkspace \
            -scheme MarvelAPI \
            -destination platform=iOS\ Simulator,name=iPhone\ 11 \
            clean test | xcpretty
