//
//  SideMenu.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 13/12/22.
//

import UIKit

class SideMenu: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var sideMenuTable: UITableView!
     var menuBArArray = ["My Order", "My Profile","Address","Current Location","Delivery Address","Payment & Refund","Contact Us","Setting","Help & FAQs"]
    
    var menuImageArray = [  UIImage.init(named: "order_ic"),UIImage.init(named: "male_ic"),UIImage.init(named: "homeAddress_ic"),UIImage.init(named: "myLoaction"),UIImage.init(named: "delivery_ic-1"),UIImage.init(named: "payment_ic"),UIImage.init(named: "magnetic_ic"),UIImage.init(named: "contactUs_ic"),UIImage.init(named: "setting_ic"),UIImage.init(named: "faq-1")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        sideMenuTable.dataSource = self
        sideMenuTable.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuImageArray.count
       // return menuBArArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sideMenuTable.dequeueReusableCell(withIdentifier: "cell") as! MenubarTablee
        cell.menubarImg.image = menuImageArray[indexPath.row]
       cell.menubarText.text = menuBArArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    


}
class MenubarTablee : UITableViewCell{
    
    @IBOutlet weak var menubarImg: UIImageView!
    @IBOutlet weak var menubarText: UILabel!
}
