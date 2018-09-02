# PasswordRules

A Swift library for defining strong password generator rules.

This functionality is discussed in the NSHipster article
[Password Rules / UIText​Input​Password​Rules](https://nshipster.com/uitextinputpasswordrules/).

---

## Requirements

- Swift 4.0+

## Installation

### Swift Package Manager

Add the PasswordRules package to your target dependencies in `Package.swift`:

```swift
import PackageDescription

let package = Package(
  name: "YourProject",
  dependencies: [
    .package(
        url: "https://github.com/NSHipster/PasswordRules",
        from: "1.0.0"
    ),
  ]
)
```

Then run the `swift build` command to build your project.

### Carthage

To use PasswordRules in your Xcode project using Carthage,
specify it in `Cartfile`:

```
github "NSHipster/PasswordRules" ~> 1.0.0
```

Then run the `carthage update` command to build the framework,
and drag the built PasswordRules.framework into your Xcode project.

### Manually

Add the [PasswordRules.swift](https://github.com/NSHipster/PasswordRules/blob/master/Sources/PasswordRules/PasswordRules.swift) file to your project. 

## Usage

Define an array of `PasswordRules` cases
and use the `descriptor(for:)` method to create a string representation:

```swift
import PasswordRules

let rules: [PasswordRule] = [ .required(.upper),
                              .required(.lower),
                              .required(.special),
                              .minLength(20) ]

let descriptor = PasswordRule.descriptor(for: rules)
// "required: upper; required: lower; required: special; minlength: 20;"
```

Initialize a `UITextInputPasswordRules` object using the descriptor
and pass that to the `passwordRules` property of a secure text field:

```swift
import UIKit

guard #available(iOS 12, *) else {
    fatalError()
}

self.passwordTextField.passwordRules =
    UITextInputPasswordRules(descriptor: descriptor)
```

## License

MIT

## Contact

NSHipster ([@NSHipster](https://twitter.com/NSHipster))
