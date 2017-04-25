//
//  ViewController.swift
//  ios-swift-harness
//
//  Created by Matt Smollinger on 1/31/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit
import Mapzen_ios_sdk

class ViewController: MZMapViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    try? loadStyleAsync(.bubbleWrap, onStyleLoaded: { [unowned self] (mapStyle) in
      self.enableLocationLayer(true)
      self.showFindMeButon(true)
    })
  }

}

