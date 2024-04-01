//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by MoKhaled on 18/03/2024.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var massageBubble: UIView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leffImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        massageBubble.layer.cornerRadius = massageBubble.frame.size.height / 5
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
