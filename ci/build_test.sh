#!/bin/sh

xcodebuild -workspace BaseViewControllerSwift.xcworkspace -scheme "iOS Example" -destination "platform=$SIM_PLATFORM,name=$SIM_DEVICE" ONLY_ACTIVE_ARCH=YES clean build | bundle exec xcpretty
