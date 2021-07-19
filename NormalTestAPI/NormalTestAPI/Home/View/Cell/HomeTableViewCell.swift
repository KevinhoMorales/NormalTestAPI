//
//  HomeTableViewCell.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(home: HomeModel) {
        nameLabel.text = home.title
        idLabel.text = "\(home.id)"
    }
    
}
