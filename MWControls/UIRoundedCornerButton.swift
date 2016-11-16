//
//  UIRoundedCornerButton.swift
//  Accumoo
//
//  Created by Gene M. Angelo  Jr. on 11/14/16.
//  Copyright © 2016 Mohojo Werks LLC. All rights reserved.
//
import UIKit

class UIRoundedCornerButton: UIButton {

   override init(frame: CGRect) {
      // properties
      
      super.init(frame: frame)
      
      // Set anything that uses view or visible bounds
   }
   
   required init(coder aDecoder: NSCoder) {
      // properties
      
      super.init(coder: aDecoder)!
   }
   
   @IBInspectable var cornerRadius: CGFloat = 0 {
      didSet {
         layer.cornerRadius = cornerRadius
         layer.masksToBounds = cornerRadius > 0
      }
   }
   
   @IBInspectable var borderWidth: CGFloat = 0 {
      didSet {
         layer.borderWidth = borderWidth
      }
   }
   
   @IBInspectable var borderColor: UIColor? {
      didSet {
         layer.borderColor = borderColor?.cgColor
      }
   }
}
