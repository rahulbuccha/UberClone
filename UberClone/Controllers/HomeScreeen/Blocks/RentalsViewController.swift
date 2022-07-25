//
//  RentalsViewController.swift
//  UberClone
//
//  Created by Admin on 25/07/22.
//

import UIKit

class RentalsViewController: UIViewController {
    
    let image = ["rental", "pin", "park"]
    let def = ["As many stops as you need in one car", "Change your stops on the go", "Don't spend time parking"]

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
    }
    

}

extension RentalsViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RentalTableViewCell") as! RentalTableViewCell
        let images = image[indexPath.row]
        let define = def[indexPath.row]
        cell.iconImage.image = UIImage(named: images)
        cell.txtlabel.text = define
        
        return cell
    }
    
    
}
