//
//  ViewController.swift
//  Stringtail
//
//  Created by 🦊Tomoya Hirano on 05/11/2018.
//  Copyright (c) 2018 🦊Tomoya Hirano. All rights reserved.
//

import UIKit
import Stringtail

final class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
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
  }
}
