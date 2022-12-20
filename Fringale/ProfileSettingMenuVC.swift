//
//  ProfileSettingMenuVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 20/12/22.
//

import UIKit

class ProfileSettingMenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
     var captionArray = ["Sam Billing", "One MemberShip","MY Account","Addresses","Payments & Refunds","Refund Status","Payment Modes","Swiggy Money","Help"]

    var descArray = ["samBilling@gmail.com","Flat 68%off on One membership","Favourites & Setting","Share,Edit & Add new Addresses","Refund Status 7 payment modes","","","",""]
    @IBOutlet weak var profileSettingTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileSettingTable.dataSource = self
        profileSettingTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return captionArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileSettingTable.dequeueReusableCell(withIdentifier: "cell") as! profileSettting
        cell.captionText.text = captionArray[indexPath.row]
        cell.descText.text = descArray[indexPath.row]
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}
class profileSettting : UITableViewCell {
    
    @IBOutlet weak var captionText: UILabel!
    @IBOutlet weak var descText: UILabel!
}
