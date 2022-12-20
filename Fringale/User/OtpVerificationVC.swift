//
//  OtpVerficationVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 08/12/22.
//

import UIKit

class OtpVerficationVC: UIViewController, UITextFieldDelegate{

    var phoneNum = ""
    
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TF3: UITextField!
    @IBOutlet weak var TF4: UITextField!
    @IBOutlet weak var TF5: UITextField!
    @IBOutlet weak var TF6: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        phoneNumber.text = phoneNum
        TF1.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
        TF2.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
        TF3.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
        TF4.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
        TF5.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
        TF6.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: UIControl.Event.editingChanged)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TF1.becomeFirstResponder()
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        let text = textField.text!
        if text.utf16.count == 1 {
            switch textField {
                
            case TF1 :
                TF2.becomeFirstResponder()
                break
            case TF2 :
                TF3.becomeFirstResponder()
                break
            case TF3 :
                TF4.becomeFirstResponder()
                break
            case TF4 :
                TF5.becomeFirstResponder()
                break
            case TF5 :
                TF6.becomeFirstResponder()
                break
            case TF6 :
                TF1.becomeFirstResponder()
              default :
                  break
            }
        }
    }
    @IBOutlet weak var phoneNumber: UILabel!
    
    @IBAction func backbuttn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
 
    
    
}
