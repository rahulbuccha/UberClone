//
//  HelpViewController.swift
//  UberClone
//
//  Created by Admin on 26/07/22.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var helpTableView: UITableView!
    
    let texts = ["Help with a trip", "Account and Payment Options", "More", " A Guide to Uber", "Uber Shuttle issues", "Signing up", "Accessibility", "Uber Money", "About cancellation policy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        helpTableView.delegate = self
        helpTableView.dataSource = self
        helpTableView.separatorStyle = .none
        
    }
 

}

extension HelpViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        texts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = helpTableView.dequeueReusableCell(withIdentifier: "HelpTableViewCell") as! HelpTableViewCell
        
        cell.label.text = texts[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
}
