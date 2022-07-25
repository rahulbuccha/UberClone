//
//  IntercityViewController.swift
//  UberClone
//
//  Created by Admin on 25/07/22.
//

import UIKit

class IntercityViewController: UIViewController {

    let image = ["car", "block", "ride"]
    let def = ["For outstation trips to Durgapur, Asansol, Burdawan, Digha, Mandarmani and more", "Convenient and affordable trips", "Available anywhere, anytime"]

    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
    }


}

extension IntercityViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntercityTableViewCell") as! IntercityTableViewCell
        
        let images = image[indexPath.row]
        let define = def[indexPath.row]
        cell.iconImage.image = UIImage(named: images)
        cell.txtlabel.text = define
        
        return cell
    }
    
    
}
