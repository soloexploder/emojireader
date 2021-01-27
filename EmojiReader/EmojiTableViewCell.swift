//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by MacBook on 29.12.2020.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func set(object: Emoji)  {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.discriptionLabel.text = object.discription
    }

}
