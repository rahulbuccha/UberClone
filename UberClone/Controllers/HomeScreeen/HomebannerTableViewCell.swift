//
//  HomebannerTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.


import UIKit

class HomebannerTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

   
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
}
