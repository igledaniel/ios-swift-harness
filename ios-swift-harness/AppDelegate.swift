//
//  AppDelegate.swift
//  ios-swift-harness
//
//  Created by Matt Smollinger on 1/31/17.
//  Copyright © 2017 Mapzen. All rights reserved.
//

import UIKit
import Mapzen_ios_sdk

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let apiKey = getEnvironmentVariable(key: "MAPZEN_API_KEY")
    assert(apiKey.contains("mapzen-"), "Set your Mapzen API key in the scheme by adding a MAPZEN_API_KEY environment variable.")
    MapzenManager.sharedManager.apiKey = apiKey
    return true
  }

  private func getEnvironmentVariable(key: String) -> String {
    var envVar = ""
    // scheme environment variables
    if let processVar = ProcessInfo.processInfo.environment[key] {
      envVar = processVar
    }
    return envVar
  }
  
}

