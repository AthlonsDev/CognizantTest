//
//  TableViewController.swift
//  CognizantTest
//
//  Created by Athlosn90 on 13/03/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit


class TableViewController: UITableViewController {
    
    var viewModel = [DataViewModel]()
    let cellID = "cellId"
    
    override func viewDidLoad() {
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 150
        navigationItem.title = "Our Solar System"
        
        let dvm = DataViewModel(data: Planets())
        
        dvm.fetchData { (data) in
            self.viewModel = data.map({return DataViewModel(data: $0)})
            print(self.viewModel[0].name)
            self.tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CustomCell
        
        let dataIndex = viewModel[indexPath.item]
                
        cell.dvm = dataIndex
        
        return cell
        
    }
}
