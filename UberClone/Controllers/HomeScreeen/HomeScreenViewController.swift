//
//  HomeScreenViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit

class HomeScreenViewController: UIViewController {
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        //delegates assigned
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.separatorStyle = .none
        
    }

}

//MARK: TableView Methods
extension HomeScreenViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 180
        }
        else if indexPath.row == 1{
            return 230
        }
        else{
            return 100
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomebannerTableViewCell") as! HomebannerTableViewCell
            cell.selectionStyle = .none
            
            
            return cell
        }
        else{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomeBlockTableViewCell") as! HomeBlockTableViewCell
            
            return cell
        }
    }
    
    
}
