//
//  DataController.swift
//  TableViewMVC
//
//  Created by Juan Landy on 21/3/18.
//  Copyright © 2018 Juan Landy. All rights reserved.
//

import Foundation

class DataController {
    let quotes: [Quote]
    
    init() {
        //http://matteomanferdini.com/how-to-persist-data-in-ios-apps-using-property-lists-and-the-correct-architecture-for-handling-persistent-storage/
        let fileUrl = Bundle.main.url(forResource: "Quotes", withExtension: "plist")!
        let quotesPlists = NSArray(contentsOf: fileUrl) as! [PListDictionary]
        quotes = quotesPlists.map(Quote.init)
    }
}
