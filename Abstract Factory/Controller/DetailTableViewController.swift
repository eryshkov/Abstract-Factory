//
//  DetailTableViewController.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 21/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    //MARK: -
    var items: [Furniture?] = [Furniture?]()

    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let item = items[indexPath.row]
        
        if let chair = item as? Chair {
            cell.textLabel?.text = chair.type
            cell.detailTextLabel?.text = chair.name
            cell.imageView?.image = chair.image
            return cell
        }
        
        if let sofa = item as? Sofa {
            cell.textLabel?.text = sofa.type
            cell.detailTextLabel?.text = sofa.name
            cell.imageView?.image = sofa.image
            return cell
        }

        if let table = item as? Table {
            cell.textLabel?.text = table.type
            cell.detailTextLabel?.text = table.name
            cell.imageView?.image = table.image
            return cell
        }
        
        return cell
    }
    
}
