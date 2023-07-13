//
//  ViewController.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 10/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storyboard = UIStoryboard(name: "Feed", bundle: nil)
        let feedViewController = storyboard.instantiateViewController(withIdentifier: "FeedViewController") as! FeedViewController
        self.navigationController?.pushViewController(feedViewController, animated: true)
    }
}

