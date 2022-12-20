//
//  paymentMethodVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 15/12/22.
//

import UIKit

class paymentMethodVC: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var paymentMethodTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        paymentMethodTable.delegate = self
        paymentMethodTable.dataSource = self
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = paymentMethodTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!  paymentMethod
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
        
    }
    }
class paymentMethod: UITableViewCell{
    
}
