//
//  SettingList.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 09/12/22.
//

import UIKit

class SettingList: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var accountSettngTable: UITableView!
    let settingImgArray = [UIImage.init(named: "user_ic"),UIImage.init(named: "lock_ic"),UIImage.init(named: "magnetic_ic"),UIImage.init(named: "location_ic"),UIImage.init(named: "facebookB_ic"),UIImage.init(named: "share_ic")]
    let settingCaptionArray = ["Profile Information","Change Password","Payment Methods","Locations","Add Social Account","Refer to Friends"]
    let CatptionDesArray = ["Change your account information","Change your password","Add your credit & debit cards","Add your credit & debit cards","Add Facebook, Twitter etc","Add Facebook, Twitter etc"]
    override func viewDidLoad() {
        super.viewDidLoad()
        accountSettngTable.delegate = self
        accountSettngTable.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingImgArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = accountSettngTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SettingTable
        cell.captionLbl.text = settingCaptionArray[indexPath.row]
        cell.captionDeslbl.text = CatptionDesArray[indexPath.row]
        cell.settngIMg.image = settingImgArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
}
class SettingTable : UITableViewCell{
    @IBOutlet weak var captionLbl: UILabel!
    @IBOutlet weak var captionDeslbl: UILabel!
    
    @IBOutlet weak var settngIMg: UIImageView!
}
