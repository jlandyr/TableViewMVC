//
//  Quote.swift
//  TableViewMVC
//
//  Created by Juan Landy on 20/3/18.
//  Copyright © 2018 Juan Landy. All rights reserved.
//

import Foundation

typealias PListDictionary = [String: AnyObject]

protocol PlistKey: RawRepresentable {}

protocol PlistValue {}
extension Bool: PlistValue {}
extension String: PlistValue {}
extension Int: PlistValue {}
extension Date: PlistValue {}
extension Data: PlistValue {}
extension Dictionary: PlistValue {}
extension Array: PlistValue {}

struct Quote {
    let author: String
    let text: String
}

extension Quote{
    private enum Keys: String, PlistKey {
        case author
        case text
    }
    
    init(plist: PListDictionary) {
        author = plist.value(forKey: Keys.author)
        text = plist.value(forKey: Keys.text)
    }
}

extension Dictionary where Value: AnyObject {
    func value<V: PlistValue, K: PlistKey>(forKey key: K) -> V where K.RawValue == String {
        return self[key.rawValue as! Key] as! V
    }
}


