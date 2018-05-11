//
//  Stringtail.swift
//  Stringtail
//
//  Created by Tomoya Hirano on 2018/05/11.
//

import UIKit

// Then style cording
extension String {
  public func with(_ style: AttributedStyle = .init(),
                   _ closure: ((inout AttributedStyle) -> Void)) -> NSAttributedString {
    let attributedString = NSMutableAttributedString(string: self)
    return attributedString.with(style, closure)
  }
}

extension NSAttributedString {
  public func with(_ style: AttributedStyle = .init(),
                   _ closure: ((inout AttributedStyle) -> Void)) -> NSAttributedString {
    var style = style
    let attributedString = NSMutableAttributedString(attributedString: self)
    closure(&style)
    style.apply(attributedString: attributedString)
    return attributedString
  }
}

// convenience operator
extension NSAttributedString {
  public static func +(l: NSAttributedString, r: NSAttributedString) -> NSAttributedString {
    let l = NSMutableAttributedString(attributedString: l)
    l.append(r)
    return l
  }
}

// convenience decorator
extension NSAttributedString {
  public static func space(_ space: CGFloat) -> NSAttributedString {
    let attachment = NSTextAttachment()
    attachment.bounds = CGRect(origin: .zero, size: .init(width: space, height: 0))
    return NSAttributedString(attachment: attachment)
  }
}

// style
public struct AttributedStyle {
  public var font: Font? = nil
  public var paragraphStyle: NSMutableParagraphStyle = .init()
  public var textColor: UIColor? = nil
  public var backgroundColor: UIColor? = nil
  public var kern: Double? = nil
  public var underline: NSUnderlineStyle? = nil
  public var strokeColor: UIColor? = nil
  public var strokeWidth: Double? = nil
  public var link: URL? = nil
  public var baselineOffset: Double? = nil
  public var underlineColor: UIColor? = nil
  public var strikethroughColor: UIColor? = nil
  
  public init() {}
  
  internal func apply(attributedString: NSMutableAttributedString) {
    let range = NSMakeRange(0, attributedString.length)
    if let font = font {
      attributedString.addAttributes([.font : font.font], range: range)
    }
    if let textColor = textColor {
      attributedString.addAttributes([.foregroundColor : textColor], range: range)
    }
    if let color = backgroundColor {
      attributedString.addAttributes([.backgroundColor : color], range: range)
    }
    if let kern = kern {
      attributedString.addAttributes([.kern : kern], range: range)
    }
    if let underline = underline {
      attributedString.addAttributes([.underlineStyle : underline], range: range)
    }
    if let strokeColor = strokeColor {
      attributedString.addAttributes([.strokeColor : strokeColor], range: range)
    }
    if let strokeWidth = strokeWidth {
      attributedString.addAttributes([.strokeWidth : strokeWidth], range: range)
    }
    if let link = link {
      attributedString.addAttributes([.link : link], range: range)
    }
    if let baselineOffset = baselineOffset {
      attributedString.addAttributes([.baselineOffset : baselineOffset], range: range)
    }
    if let underlineColor = underlineColor {
      attributedString.addAttributes([.underlineColor : underlineColor], range: range)
    }
    if let strikethroughColor = strikethroughColor {
      attributedString.addAttributes([.strikethroughColor : strikethroughColor], range: range)
    }
    attributedString.addAttributes([.paragraphStyle : paragraphStyle], range: range)
  }
}
