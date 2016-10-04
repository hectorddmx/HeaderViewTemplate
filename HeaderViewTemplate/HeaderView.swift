//
//  HeaderView.swift
//  xibreusables
//
//  Created by Hector H. De Diego Brito on 10/3/16.
//  Copyright © 2016 HHDDB. All rights reserved.
//

import UIKit

@IBDesignable
class HeaderView: UIView {
  
  @IBOutlet var view: UIView!
  
  @IBOutlet weak var lblTitle: UILabel!
  
  // Buttons
  @IBOutlet weak var btnLeftA: UIButton!
  @IBOutlet weak var btnLeftB: UIButton!
  @IBOutlet weak var btnRightB: UIButton!
  @IBOutlet weak var btnRightA: UIButton!
  
  // AutoLayoutConstraints
  @IBOutlet weak var lcLeftA: NSLayoutConstraint!
  @IBOutlet weak var lcLeftB: NSLayoutConstraint!
  @IBOutlet weak var lcRightB: NSLayoutConstraint!
  @IBOutlet weak var lcRightA: NSLayoutConstraint!
  
  weak var delegate: HeaderViewDelegate?
  
  required override init(frame: CGRect) {
    super.init(frame: frame)
    customInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customInit()
  }
  
  private func customInit() {
    
    view = loadViewFromNib()
    view.frame = self.bounds
    addSubview(view)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layoutIfNeeded()
  }
  
  @IBAction func actMenuButton(_ sender: UIButton) {
    delegate?.actMenuButton(sender)
  }
  
  
  func loadViewFromNib() -> UIView {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName:"HeaderView", bundle: bundle)
    let aView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    return aView
  }

}


protocol HeaderViewDelegate: class {
  
  func actMenuButton(_ sender: UIButton)
  
}
