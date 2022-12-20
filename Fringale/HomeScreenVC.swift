//
//  HomeScreenVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 08/12/22.
//

import UIKit

class HomeScreenVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, UITableViewDataSource, UITableViewDelegate {
   
    
    
    @IBOutlet weak var addressLabell: UILabel!
    
    @IBOutlet weak var foodItemCollection: UICollectionView!
    
    @IBOutlet weak var populerItem: UICollectionView!
    @IBOutlet weak var allRestaurants: UITableView!
    
    var addressLabelll = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemCollection.delegate = self
        foodItemCollection.dataSource = self
        populerItem.dataSource = self
        populerItem.delegate = self
        allRestaurants.dataSource = self
        allRestaurants.delegate = self
      
        addressLabell.text = addressLabelll
      
    }
    @IBAction func locateMe(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "GeoLocationSearchVC") as! GeoLocationSearchVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    //All Restourant Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = allRestaurants.dequeueReusableCell(withIdentifier: "cell") as! AllRestourant
        return cell
    }
    @IBAction func allRestaurants(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AllRestaurantsVC") as! AllRestaurantsVC
        self.navigationController?.pushViewController(vc, animated: true
        )
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  240
        
        
        
        
    }
    @IBAction func sideMenuBar(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideMenu") as! SideMenu
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func profileSetting(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileSettingVC") as! ProfileSettingVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    //Features restourant and popular restorant Collection

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == foodItemCollection {
    return 10
    } else{
        return 10
    }
}
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == foodItemCollection {
    let cell = foodItemCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  FoodCollection
    return cell
    } else{
        let cell = self.populerItem.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  PopulerItem
         return cell
    }
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == foodItemCollection {
        return (CGSize.init(width: foodItemCollection.frame.width/1.2, height: foodItemCollection.frame.height))
        }else{
        return (CGSize.init(width: populerItem.frame.width/2.1, height: populerItem.frame.height))
}
}
    }

class FoodCollection: UICollectionViewCell{
    
    
}
    class  PopulerItem : UICollectionViewCell{
        
    }
class AllRestourant :  UITableViewCell{
    
}
