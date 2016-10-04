//
//  ViewController.swift
//  xibreusables
//
//  Created by Hector H. De Diego Brito on 10/3/16.
//  Copyright © 2016 HHDDB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // STEP 0: Add a View to the Storyboard and change it's class to HeaderView
  // STEP 1: Add this outlet for the View
  @IBOutlet weak var headerView: HeaderView!
  
  //Changing Status Bar Swift 3 style
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    headerConfiguration()
  }
  
  
  
}


// STEP 2: Add this protocol, change the ViewController name
extension ViewController: HeaderViewDelegate {
  
  // STEP 3: Set title text, button visibility, and button images
  func headerConfiguration() {
    headerView.delegate = self
    
    // LabelTitle
    headerView.lblTitle.text = "test machine"
    
    // Buttons:
    
    // LeftMost
    headerView.btnLeftA.setImage(#imageLiteral(resourceName: "GreenCircle"), for: .normal)
    headerView.btnLeftA.tag = 0
    //headerView.btnLeftA.isHidden = false
    //headerView.lcLeftA.constant = 0
    
    // LeftCenter
    //headerView.btnLeftB.setImage(#imageLiteral(resourceName: "AquaCircle"), for: .normal)
    headerView.btnLeftB.tag = 1
    headerView.btnLeftB.isHidden = true
    headerView.lcLeftB.isActive = false
    
    // RightCenter
    //headerView.btnRightB.setImage(#imageLiteral(resourceName: "YellowCircle"), for: .normal)
    headerView.btnRightB.tag = 2
    headerView.btnRightB.isHidden = true
    headerView.lcRightB.isActive = false
    
    // RightMost
    headerView.btnRightA.setImage(#imageLiteral(resourceName: "RedCircle"), for: .normal)
    headerView.btnRightA.tag = 3
    //headerView.btnRightA.isHidden = false
    //headerView.lcRightA.constant = 0
    
  }
  
  // STEP 4: Set custom events
  func actMenuButton(_ sender: UIButton) {
    switch sender.tag {
    case 0: print("LEFT MOST BUTTON")
    case 1: print("LEFT CENTER BUTTON")
    case 2: print("RIGHT CENTER BUTTON")
    case 3: print("RIGHT MOST BUTTON")
    default: break
    }
    
  }
  
}
