//
//  VideoModel.swift
//  Africa
//
//  Created by Shazeen Thowfeek on 20/03/2024.
//

import Foundation

struct Video: Codable,Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    //computed property
    
    var thumbnail: String{
        "video-\(id)"
    }
}
