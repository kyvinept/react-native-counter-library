//
//  CounterViewManager.swift
//  CounterApp
//
//  Created by silchenko on 16.01.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  override func view() -> UIView! {
    return CounterView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func updateFromManager(_ node: NSNumber, count: NSNumber) {
    DispatchQueue.main.async {
      let component = self.bridge.uiManager.view(
        forReactTag: node
        ) as! CounterView
      component.update(value: count)
    }
  }
}
