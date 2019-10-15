#!/bin/sh

if which swiftlint >/dev/null; then
    swiftlint --path ../
else
    echo "SwiftLint does not exist, download from https://github.com/realm/SwiftLint"
fi
