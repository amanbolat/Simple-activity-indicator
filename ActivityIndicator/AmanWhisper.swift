//
//  AmanWhisper.swift
//  ActivityIndicator
//
//  Created by AMANBOLAT BALABEKOV on 16.09.16.
//  Copyright © 2016 AMANBOLAT BALABEKOV. All rights reserved.
//

import Foundation
import UIKit

struct AmanWhisper {
  var whisperView: UIView
  var label: UILabel
  weak var navigationController: UINavigationController?
  
  init(navigationController: UINavigationController, message: String) {
    self.navigationController = navigationController
    label = UILabel()
    label.text = message
    whisperView = UIView()
    
    let navigationBar = self.navigationController?.navigationBar
    let navigationBarHeight = navigationBar?.bounds.height
    let navigationBarWidth = navigationBar?.bounds.width
    
    
    
  }
  
  
}
