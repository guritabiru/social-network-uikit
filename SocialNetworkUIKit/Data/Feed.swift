//
//  Feed.swift
//  SocialNetworkUIKit
//
//  Created by Bimo Sekti Wicaksono on 10/07/23.
//

import Foundation

struct Feed: Codable, Hashable {
    let name: String?
    let profilePhoto: String?
    let postPhoto: String?
    let date: String?
    let caption: String?
    let likes: Int?
    let comment: [Comment]?
    
    struct Comment: Codable, Hashable {
        let name: String
        let photo: String
        let comment: String
    }
}
