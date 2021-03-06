//
//  Post.swift
//  Digital
//
//  Created by Nikolas Andryuschenko on 4/15/17.
//  Copyright © 2017 Andryuschenko. All rights reserved.
//

import Foundation


struct Post {
    
    var id: String?
    
    let user: User
    let imageUrl: String
    let caption: String
    let creationDate: Date
    let videoUrl: String
    let type: String
    
    var hasLiked = false
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.type = dictionary["type"] as? String ?? ""
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        self.videoUrl = dictionary["videoUrl"] as? String ?? ""
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
    }

}
