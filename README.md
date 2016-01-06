[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/ustwo/baseviewcontroller-swift/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/ustwo/baseviewcontroller-swift.svg?branch=master)](https://travis-ci.org/ustwo/baseviewcontroller-swift)
[![codecov.io](https://codecov.io/github/ustwo/baseviewcontroller-swift/coverage.svg?branch=master)](https://codecov.io/github/ustwo/baseviewcontroller-swift?branch=master)

# BaseViewController

The BaseViewController framework provides an organizational tool for writing custom view controllers using `UIKit`. This framework is written using Swift 2.1. It has been developed and used by iOS developers at [ustwo](ustwo.com).

## Dependencies

* [Xcode](https://itunes.apple.com/gb/app/xcode/id497799835?mt=12#)

## Installation

### Manually

Add the `BaseViewController.swift` file from the `Sources` folder to your Xcode project.

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

  underlyingView.titleLabel.text = "Foo"
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
