//
//  PostView.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 14/07/23.
//

import UIKit

@IBDesignable
final class PostView: UIView {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileNameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var captionLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var contohLbl: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "PostView") else {return}
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func setView(feed: Feed?) {
        profileImg.image = UIImage(named: feed?.profilePhoto ?? "defaultProfilePhoto")
        postImg.image = UIImage(named: feed?.postPhoto ?? "defaultProfilePhoto")
        profileNameLbl.text = feed?.name
        captionLbl.text = feed?.caption
        dateLbl.text = feed?.date
    }
}
