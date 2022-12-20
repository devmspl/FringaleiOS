//
//  SignUpVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 08/12/22.
//

import UIKit
import ADCountryPicker
import DropDown
import IQKeyboardManagerSwift

class SignUpVC: UIViewController,ADCountryPickerDelegate {
  
    
    
    

  
    @IBOutlet weak var countryCodeBtn: UIButton!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var countryImage: UIImageView!
    
    @IBOutlet weak var countryCodeLbl: UILabel!
    
    var countryCod = ADCountryPicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.becomeFirstResponder()
    }
  
    @IBAction func countryCodeTapped(_ sender: Any) {
        
        self.present(countryCod, animated: true, completion: nil)
        countryCod.didSelectCountryClosure = {
             name, code in
            self.countryCodeLbl.text = name
            let dialCode = self.countryCod.getDialCode(countryCode: code)
            self.countryCodeBtn.setTitle(dialCode, for: .normal)
            let img = self.countryCod.getFlag(countryCode: code)
            self.countryImage.image = img
            self.dismiss(animated: true)
        }
    }
    
    @IBAction func showCountryPickerView(_ sender: Any) {
        
    }

    
    func countryPicker(_ picker: ADCountryPicker, didSelectCountryWithName name: String, code: String, dialCode: String) {
        print("sdafsad",name,code,dialCode)
        
    }
    
    @IBAction func continueToOTP(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OtpVerficationVC") as! OtpVerficationVC
        vc.phoneNum = phoneNumber.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func skipToHome(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "tabbarViewController") as! tabbarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

