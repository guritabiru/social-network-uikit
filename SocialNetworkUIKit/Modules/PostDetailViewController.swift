//
//  PostDetailViewController.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 11/07/23.
//

import UIKit

class PostDetailViewController: UIViewController {

    var postData: Feed?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail Post"
        print(postData?.name ?? "")
    }

}
