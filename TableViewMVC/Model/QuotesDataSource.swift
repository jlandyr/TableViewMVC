//
//  QuotesDataSource.swift
//  TableViewMVC
//
//  Created by Juan Landy on 20/3/18.
//  Copyright © 2018 Juan Landy. All rights reserved.
//

import Foundation
import  UIKit

class QuotesDataSource: NSObject {
    let quotes: [Quote]
    
    init(quotes: [Quote]) {
        self.quotes = quotes
    }
}

extension QuotesDataSource: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell") as! TableViewCell
        let quote = quotes[indexPath.row]
        cell.author = quote.author
        cell.quoteText = quote.text
        return cell
    }
    
    
}
