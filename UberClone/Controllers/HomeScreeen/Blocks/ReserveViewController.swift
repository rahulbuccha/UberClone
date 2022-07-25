//
//  ReserveViewController.swift
//  UberClone
//
//  Created by Admin on 25/07/22.
//

import UIKit

class ReserveViewController: UIViewController {

    let image = ["calen", "hour", "brief"]
    let def = ["Choose your exact pick-up time up to 30 days in advance", "Extra wait time included to meet your trip", "Cancel at no charge up to 60 minutes in advance"]

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ReserveViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReserveTableViewCell") as! ReserveTableViewCell
        let images = image[indexPath.row]
        let define = def[indexPath.row]
        cell.iconImage.image = UIImage(named: images)
        cell.txtlabel.text = define
        
        
        return cell
    }
    
    
}
