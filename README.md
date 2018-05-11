# Stringtail

[![CI Status](https://img.shields.io/travis/noppefoxwolf/Stringtail.svg?style=flat)](https://travis-ci.org/noppefoxwolf/Stringtail)
[![Version](https://img.shields.io/cocoapods/v/Stringtail.svg?style=flat)](https://cocoapods.org/pods/Stringtail)
[![License](https://img.shields.io/cocoapods/l/Stringtail.svg?style=flat)](https://cocoapods.org/pods/Stringtail)
[![Platform](https://img.shields.io/cocoapods/p/Stringtail.svg?style=flat)](https://cocoapods.org/pods/Stringtail)


## Usage

```
let hello = "hello".with {
  $0.font = .systemFont(ofSize: 42)
  $0.paragraphStyle.alignment = .left
  $0.textColor = .red
}
let world = "world".with {
  $0.font = .systemFont(ofSize: 12)
  $0.paragraphStyle.alignment = .left
  $0.textColor = .blue
}
label.attributedText = hello + .space(10) + world
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Stringtail is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Stringtail'
```

## Author

🦊Tomoya Hirano, noppelabs@gmail.com

## License

Stringtail is available under the MIT license. See the LICENSE file for more info.
