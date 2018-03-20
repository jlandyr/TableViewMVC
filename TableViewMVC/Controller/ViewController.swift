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

    required init?(coder aDecoder: NSCoder) {
        let quotes = [
            Quote(author: "Albert Einstein", text: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe. Two things are infinite: the universe and human stupidity; and I am not sure about the universe."),
            Quote(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design is how it works."),
            Quote(author: "John Lennon", text: "Life is what happens when you’re busy making other plans.")
        ]
        self.dataSource = QuotesDataSource(quotes: quotes)
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

