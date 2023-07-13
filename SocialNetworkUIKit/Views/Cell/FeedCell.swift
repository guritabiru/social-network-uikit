//
//  FeedCell.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 10/07/23.
//

import UIKit

class FeedCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileNameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var captionLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var commentLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(data: Feed?) {
        profileImg.image = UIImage(named: data?.profilePhoto ?? "defaultProfilePhoto")
        postImg.image = UIImage(named: data?.postPhoto ?? "defaultProfilePhoto")
        profileNameLbl.text = data?.name
        captionLbl.text = data?.caption
        dateLbl.text = data?.date
    }
    
}
