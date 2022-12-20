//
//  AllRestourantVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 14/12/22.
//

import UIKit

class AllRestourantVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var allrestourantTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        allrestourantTable.dataSource = self
        allrestourantTable.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = allrestourantTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!  AllRestourant
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 225
    }


}
class allrestourantTable: UITableViewCell{
    
}

