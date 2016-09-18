//
//  AmanIndicator.swift
//  ActivityIndicator
//
//  Created by AMANBOLAT BALABEKOV on 15.09.16.
//  Copyright © 2016 AMANBOLAT BALABEKOV. All rights reserved.
//

import Foundation
import UIKit

struct AmanIndicator {
  var messageView: UIView
  var indicator: UIActivityIndicatorView
  var label: UILabel
  var stack: UIStackView
  weak var vc: UIViewController?
  
  init(vc: UIViewController, message: String) {
    self.vc = vc
    
    let size = CGSize(width: 150, height: 100)
    let vcViewHeight  = vc.view.bounds.size.height
    let vcViewWidth = vc.view.bounds.size.width
    let point = CGPoint(x: vcViewWidth / 2 - size.width / 2, y: vcViewHeight / 2 - size.height / 2)
    let rect = CGRect(origin: point, size: size)
    messageView = UIView(frame: rect)
    messageView.layer.backgroundColor = UIColor.darkGray.cgColor
    messageView.alpha = 0.9
    messageView.layer.cornerRadius = 10
    
    indicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    indicator.color = UIColor.white
    
    label = UILabel()
    label.text = message
    label.textAlignment = .center
    label.textColor = UIColor.white
    label.sizeToFit()
    
    stack = UIStackView()//(frame: messageView.bounds)
    stack.axis = .vertical
    stack.alignment = .center
    stack.distribution = .fill
    stack.spacing = 5
    stack.addArrangedSubview(indicator)
    stack.addArrangedSubview(label)
    stack.translatesAutoresizingMaskIntoConstraints = false
    
    messageView.addSubview(stack)
    stack.centerXAnchor.constraint(equalTo: messageView.centerXAnchor).isActive = true
    stack.centerYAnchor.constraint(equalTo: messageView.centerYAnchor).isActive = true
  }
  
  func show() {
    messageView.alpha = 0.5
    vc?.view.addSubview(messageView)
    indicator.startAnimating()
    messageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
    UIView.animate(withDuration: 0.3, animations: {
      self.messageView.transform = CGAffineTransform(scaleX: 1, y: 1)
      self.messageView.alpha = 1
      }, completion: nil)
    
  }
  
  func hide() {
    UIView.animate(withDuration: 0.3, animations: { 
      self.messageView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
      self.messageView.alpha = 0
      }) { (completed) in
        self.messageView.transform = CGAffineTransform.identity
        self.messageView.removeFromSuperview()
    }
  }
}
