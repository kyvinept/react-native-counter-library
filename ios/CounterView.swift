//
//  CounterView.swift
//  CounterApp
//
//  Created by silchenko on 16.01.2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit

class CounterView: UIView {
  @objc var onUpdate: RCTDirectEventBlock?
  @IBOutlet weak var button: UIButton!
  private var view: UIView!
    
  @objc private var count: NSNumber = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    loadViewFromNib()
    setLongPressGesture()
    increment()
  }
  
  func setLongPressGesture() {
    let longPress = UILongPressGestureRecognizer(
      target: self,
      action: #selector(sendUpdate(_:))
    )
    button.addGestureRecognizer(longPress)
  }
  
  @IBAction func onPressButton(_ sender: Any) {
    increment()
  }
  
  private func loadViewFromNib() {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
    guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
      return
    }
    
    view.frame = bounds
    view.autoresizingMask = [
      UIView.AutoresizingMask.flexibleWidth,
      UIView.AutoresizingMask.flexibleHeight
    ]
    addSubview(view)
    self.view = view
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc func update(value: NSNumber) {
    count = value
  }
  
  @objc func sendUpdate(_ gesture: UILongPressGestureRecognizer) {
    if gesture.state == .began {
      if onUpdate != nil {
        onUpdate!(["count": count])
      }
    }
  }
  
  @objc func increment() {
    count = count.intValue + 1 as NSNumber
  }
}
