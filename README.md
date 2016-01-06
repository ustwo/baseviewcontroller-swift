[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/ustwo/baseviewcontroller-swift/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/ustwo/baseviewcontroller-swift.svg?branch=master)](https://travis-ci.org/ustwo/baseviewcontroller-swift)
[![codecov.io](https://codecov.io/github/ustwo/baseviewcontroller-swift/coverage.svg?branch=master)](https://codecov.io/github/ustwo/baseviewcontroller-swift?branch=master)

# BaseViewController

The BaseViewController framework provides an organizational tool for writing custom view controllers using `UIKit`. This framework is written using Swift 2.1. It has been developed and used by iOS developers at [ustwo](ustwo.com).

## Dependencies

* [Xcode](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12#)

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate BaseViewControllerSwift into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.3'
use_frameworks!

pod 'BaseViewControllerSwift', '~> 1.0'
```

Then, run the following command:

```bash
$ pod install
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate BaseViewControllerSwift into your project manually. Add the `BaseViewController.swift` file from the `Sources` folder to your Xcode project.

## Usage

Use the `BaseViewController` as a base class for all your custom view controllers. Then override our common setup functions and have them automatically called as part of the initialization.

`BaseViewController` itself is a subclass of `UIViewController`. It contains two empty setup functions that are called by `viewDidLoad()`. These commonly used setup functions are `setupView()` and `setupAccessibility()` and are called in that order.

In addition, `BaseViewController` is also a generic class that takes a `UIView` as a type parameter. During the `loadView()` phase, it instantiates the view and sets it as the controller's view. `BaseViewController` also provides a `underlyingView` property for accessing the view without needing to type cast.

## Examples

Here are some example implementations of using `BaseViewController`. In all of the examples we call `super` on the setup function, but do this as appropriate in your own code.

### Controller Definition

When defining your custom view controller, inherit from `BaseViewController` and specify your custom view. There is no need to instantiate your custom view or add an accessing property. This is all done by `BaseViewController`.

```swift
final class ProfileViewController: BaseViewController<ProfileView> {
  ...
}
```

### setupView

Use the `setupView()` function to add target/actions to controls, set dynamically generated values, etc.

```swift
override func setupView() {
  super.setupView()

  underlyingView.titleLabel.text = profile.name
  underlyingView.finishedButton.addTarget(self, action: Selector("finishedButtonPressed:"), forControlEvents: .TouchUpInside)
}
```

### setupAccessibility

Use the `setupAccessibility()` function to add dynamically generated accessibility information to the view.

```swift
override func setupAccessibility() {
  super.setupAccessibility()

  underlyingView.profileImage.accessibilityLabel = NSLocalizedString("Image of", comment: "") + " " +  profile.name
}
```


## Contributors

* [Shagun Madhikarmi](mailto:shagun@ustwo.com)
* [Aaron McTavish](mailto:aamct@ustwo.com)
* [Martin Stolz](mailto:martin@ustwo.com)

## License

BaseView is released under the MIT License. See the LICENSE file.
