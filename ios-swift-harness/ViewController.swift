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
//    let _ = try? loadScene("Frameworks/Mapzen_ios_sdk.framework/scenes/scene.yaml")
    try? loadStyle(.bubbleWrap)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

