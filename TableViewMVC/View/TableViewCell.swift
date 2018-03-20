//
//  TableViewCell.swift
//  TableViewMVC
//
//  Created by Juan Landy on 20/3/18.
//  Copyright © 2018 Juan Landy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var author: String? {
        didSet {
            authorLabel.text = author ?? ""
        }
    }
    
    var quoteText: String? {
        didSet {
            quoteLabel.text = quoteText ?? ""
        }
    }
}
