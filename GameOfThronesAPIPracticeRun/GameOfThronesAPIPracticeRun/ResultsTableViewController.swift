//
//  ResultsTableViewController.swift
//  GameOfThronesAPIPracticeRun
//
//  Created by Alex Shillingford on 8/7/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    @IBOutlet weak var resultSegmentedControl: UISegmentedControl!
    var apiController = APIController()

    override func viewDidLoad() {
        super.viewDidLoad()

        apiController.fetchAllCharacters { (error) in
            
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if resultSegmentedControl.selectedSegmentIndex == 0 {
            return apiController.characterResults.count
        } else {
            return apiController.houseResults.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
        switch resultSegmentedControl.selectedSegmentIndex {
        case 0:
            cell.textLabel?.text = apiController.characterResults[indexPath.row].name
            cell.detailTextLabel?.text = apiController.characterResults[indexPath.row].culture
        default:
            cell.textLabel?.text = apiController.houseResults[indexPath.row].name
            cell.detailTextLabel?.text = apiController.houseResults[indexPath.row].region
        }

        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
