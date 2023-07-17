//
//  FeedCell.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 10/07/23.
//

import UIKit

class FeedCell: UITableViewCell {
    
    @IBOutlet weak var postView: PostView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(data: Feed?) {
        postView.setView(feed: data)
    }
    
}
