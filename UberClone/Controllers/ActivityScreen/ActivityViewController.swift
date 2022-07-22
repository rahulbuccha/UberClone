//
//  ActivityViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var activityTableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        activityTableView.delegate = self
        activityTableView.dataSource = self
        activityTableView.separatorStyle = .none
        
    }
    


}

//MARK: main tableViewcell methods of activity controller
extension ActivityViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 250
        }
        else if indexPath.row == 1{
            return 400
        }
        else {
            return 130
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = activityTableView.dequeueReusableCell(withIdentifier: "UpcomingTableViewCell") as! UpcomingTableViewCell
            
            return cell
        }
        
        else if indexPath.row == 1{
            let cell = activityTableView.dequeueReusableCell(withIdentifier: "PastOrdersTableViewCell") as! PastOrdersTableViewCell
            
            return cell
        }
        
        else{
            let cell = activityTableView.dequeueReusableCell(withIdentifier: "OderListTableViewCell") as! OderListTableViewCell
            cell.accessoryType = .disclosureIndicator

            return cell
        }
    }
    
    
}
