//
//  PaddedTextField.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 17/12/22.
//

import Foundation
import UIKit

//Custom Padded Textfield Class//
class PaddedTextField: UITextField {
    @IBInspectable var padding: CGFloat = 0
    open var paddingSpace : CGFloat?
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
}
