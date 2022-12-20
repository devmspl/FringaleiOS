//
//  YourOrderVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 09/12/22.
//

import UIKit

class YourOrderVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var yourOderTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        yourOderTable.delegate = self
        yourOderTable.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = yourOderTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! YourOrder
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
class YourOrder : UITableViewCell{
    
}
