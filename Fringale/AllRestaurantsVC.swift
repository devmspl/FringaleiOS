//
//  AllRestaurantsVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 12/12/22.
//

import UIKit

class AllRestaurantsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var allRestaurants: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        allRestaurants.dataSource = self
        allRestaurants.delegate = self
        
       
    }
    
    @IBAction func backButtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = allRestaurants.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! allRestaurants
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return (CGSize.init(width: allRestaurants.frame.width/2.1, height: allRestaurants.frame.height/2.2))
    }
    }
class allRestaurants : UICollectionViewCell{
    
}
