//
//  ViewController.swift
//  TableViewMVC
//
//  Created by Juan Landy on 20/3/18.
//  Copyright © 2018 Juan Landy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: QuotesDataSource
    let dataController = DataController()
    
    required init?(coder aDecoder: NSCoder) {
        
        self.dataSource = QuotesDataSource(quotes: dataController.quotes)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "QuoteCell")
        tableView.estimatedRowHeight = 113
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = dataSource
        tableView.reloadData()
    }

}

