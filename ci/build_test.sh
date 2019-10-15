#!/bin/sh

xcodebuild -project "Example/iOS Example.xcodeproj" -scheme="iOS Example" -destination "platform=$SIM_PLATFORM,name=$SIM_DEVICE" ONLY_ACTIVE_ARCH=YES CODE_SIGNING_ALLOWED=NO clean build | bundle exec xcpretty
