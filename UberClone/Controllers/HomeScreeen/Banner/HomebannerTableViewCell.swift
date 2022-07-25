//
//  HomebannerTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.


import UIKit

//creating protocol for collection view
protocol CollectionCellTab{
    func bannerTab(index: Int)

}

class HomebannerTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    //collection delegate
    var delegate : CollectionCellTab?
    
    @IBOutlet weak var BannercontentView: UIView!
    
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var pagerControl: UIPageControl!
    
    let banners = ["3", "1"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        
        //pagger control
        pagerControl.currentPage = 0
        pagerControl.numberOfPages = banners.count
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    //MARK: Collectionview methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return banners.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeBannerCollectionViewCell", for: indexPath) as! HomeBannerCollectionViewCell
        let banner = banners[indexPath.row]
        cell.bannerImageView.image = UIImage(named: banner)
        cell.bannerImageView.layer.cornerRadius = 15.0
        cell.bannerImageView.clipsToBounds = true
        
       
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pagerControl.currentPage = indexPath.row
    }
    
    func collectionView(_ UICollectionView : UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize{
        return CGSize(width: 380, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        delegate?.bannerTab(index: indexPath.row)
        if indexPath.row == 0{
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "BannerTermsViewController") as! BannerTermsViewController
            
        }
    }
}
