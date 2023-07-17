//
//  PostDetailViewController.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 11/07/23.
//

import UIKit

class PostDetailViewController: UIViewController {
    
    @IBOutlet weak var postDetailView: PostView!
    var postData: Feed?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail Post"
        print(postData?.name ?? "")
        postDetailView.setView(feed: postData)
    }

}
