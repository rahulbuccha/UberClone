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
        return 180
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "HomebannerTableViewCell") as! HomebannerTableViewCell
        cell.selectionStyle = .none
        
        
        return cell
    }
    
    
}
