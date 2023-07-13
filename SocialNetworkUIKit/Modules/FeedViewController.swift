//
//  FeedViewController.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 10/07/23.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if (UserDefaults.standard.bool(forKey: "isLogin") == false) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            loginVC.modalPresentationStyle = .fullScreen
            self.navigationController?.present(loginVC, animated: true, completion: nil)
        }
        self.title = "Feed"
        feedTableView.delegate = self
        feedTableView.dataSource = self
        
        let nib = UINib(nibName: "FeedCell", bundle: nil)
        feedTableView.register(nib, forCellReuseIdentifier: "feedCell")
        print("masuk login")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = feedTableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as? FeedCell {
            cell.configureCell(data: feedData[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Feed", bundle: nil)
        let detailVC = (storyboard.instantiateViewController(withIdentifier: "PostDetailViewController") as! PostDetailViewController)
        detailVC.postData = feedData[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
//        detailVC.modalPresentationStyle = .fullScreen
//        self.navigationController?.present(detailVC, animated: false, completion: nil)
    }
    
    
}
