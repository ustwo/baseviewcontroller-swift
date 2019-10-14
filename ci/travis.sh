#!/bin/sh

# bundle exec fastlane test

xcodebuild -workspace BaseViewControllerSwift.xcworkspace -scheme BaseViewControllerSwift -destination "platform=$SIM_PLATFORM,name=$SIM_DEVICE" ONLY_ACTIVE_ARCH=YES clean build test | bundle exec xcpretty
