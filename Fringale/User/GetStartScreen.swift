//
//  GetStartScreen.swift
//  Fringale
//
//  Created by Macbook Air (ios) on 06/12/22.
//

import UIKit

class GetStartScreen: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {


    @IBOutlet weak var getStartCollection: UICollectionView!
    
    var imageArray = [UIImage.init(named: "walkThrough1"), UIImage.init(named: "walkThrough2"), UIImage.init(named: "walkThrough3")]
    var cationArray = ["All your favorites","Free delivery offers","Choose your food"]
    var captiondetailArray = ["Order from the best local restaurants with easy, on-demand delivery.","Free delivery for new customers via Apple Pay and others payment methods.","Easily find your type of food craving and you’ll get delivery in wide range."]
    
    
   
    @IBOutlet weak var pagecontr: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartCollection.dataSource = self
        getStartCollection.delegate = self
       }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pagecontr?.currentPage = Int(scrollView.contentOffset.x)/Int(scrollView.frame.width)
    
    }
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        pagecontr?.currentPage = Int(scrollView.contentOffset.x)/Int(scrollView.frame.width)
    }
    
    @IBAction func getStart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = getStartCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  GetStart
          
        cell.getStartImg.image = imageArray[indexPath.item]
        cell.captionTxt.text = cationArray[indexPath.item]
        cell.favDetail.text = captiondetailArray[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return (CGSize.init(width: getStartCollection.frame.width, height: getStartCollection.frame.height))
    }
    }

    class GetStart : UICollectionViewCell{
    @IBOutlet weak var getStartImg: UIImageView!
    @IBOutlet weak var captionTxt: UILabel!
    @IBOutlet weak var favDetail: UILabel!
}
