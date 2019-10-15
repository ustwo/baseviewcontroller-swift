#!/bin/sh

xcodebuild -scheme BaseViewControllerSwift -destination "platform=$SIM_PLATFORM,name=$SIM_DEVICE" enableCodeCoverage=YES ONLY_ACTIVE_ARCH=YES clean build test | bundle exec xcpretty
