//
//  SearchVC.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 09/12/22.
//

import UIKit

class SearchVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    

    @IBOutlet weak var searchList: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchList.dataSource = self
        searchList.delegate = self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = searchList.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SearchList
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return (CGSize.init(width: searchList.frame.width/2.1, height: searchList.frame.height/3.4))
    }
}
class SearchList : UICollectionViewCell{
    @IBOutlet weak var foodItemIMG: UIImageView!
    @IBOutlet weak var imageCaption: UITextField!
}
