//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by AMANBOLAT BALABEKOV on 15.09.16.
//  Copyright © 2016 AMANBOLAT BALABEKOV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var indicatorView: AmanIndicator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    indicatorView = AmanIndicator(vc: self, message: "Loading...")
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showBtnPressed(_ sender: AnyObject) {
    indicatorView?.show()
  }
  @IBAction func hideBtnPressed(_ sender: AnyObject) {
    indicatorView?.hide()
  }

}

