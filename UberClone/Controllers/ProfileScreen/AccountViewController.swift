//
//  AccountViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var accountTableView: UITableView!
    
    let images = ["gift", "msg", "gift", "setting", "man", "info"]
    let details = ["gift", "Messages", "Send a gift", "Settings", "Earn by driving or delivering", "Legal"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        accountTableView.delegate = self
        accountTableView.dataSource = self
        accountTableView.separatorStyle = .none
        
    }
    
}

//MARK: TableView Methods
extension AccountViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 220
        }
        else{
            return 70
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = accountTableView.dequeueReusableCell(withIdentifier: "EditProfileTableViewCell") as! EditProfileTableViewCell
          
            
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = accountTableView.dequeueReusableCell(withIdentifier: "AccountSettingsTableViewCell") as! AccountSettingsTableViewCell
            let image = images[indexPath.row]
            let detail = details[indexPath.row]
            cell.settingImage.image = UIImage(named: image)
            cell.settingLabel.text = detail
            cell.selectionStyle = .none
            
            return cell
        }

    }
    
    
}
