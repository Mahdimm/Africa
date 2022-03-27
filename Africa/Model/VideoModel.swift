//
//  VideoModel.swift
//  Africa
//
//  Created by Mahdi Mahjoobi on 4/26/21.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id, name, headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
