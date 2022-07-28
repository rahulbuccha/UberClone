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
        
        //delegates TableView
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
            return 240
        }
        else if indexPath.row == 5{
            return 300
        }
        else {
            return 80
        }
        
    }
    //MARK: Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
  
    //MARK: CellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomebannerTableViewCell") as! HomebannerTableViewCell
            
            cell.delegate = self
            
            
            return cell
        }
        else if indexPath.row == 1{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomeBlockTableViewCell") as! HomeBlockTableViewCell
            homeTableView.separatorStyle = .none
            
            cell.buttonDelegate = self
            
            
            return cell
        }
        
        else if indexPath.row == 2{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as! SearchTableViewCell
            homeTableView.separatorStyle = .none
            //cell.selectionStyle = .none
            
            return cell
        }
        else if indexPath.row == 3{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "ChooseTabTableViewCell") as! ChooseTabTableViewCell
            cell.accessoryType = .disclosureIndicator
            
            cell.selectionStyle = .none
            
            return cell
        }
        else if indexPath.row == 4{
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "SetDestinationTableViewCell") as! SetDestinationTableViewCell
            cell.accessoryType = .disclosureIndicator
           
            cell.selectionStyle = .none
            
            return cell
        }
        
        else {
            let cell = homeTableView.dequeueReusableCell(withIdentifier: "MapTableViewCell") as! MapTableViewCell
            
            return cell
        }
    }
    
    //didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
        }
    }
    
    
}

//MARK: extension for CollectionTab protocol
extension HomeScreenViewController : CollectionCellTab{
    func bannerTab(index: Int) {
        print(index)
    }
    
    
}


extension HomeScreenViewController : ButtonTapped{
    func buttonClicked(index: Int) {
        print(index)
    }
    
}
