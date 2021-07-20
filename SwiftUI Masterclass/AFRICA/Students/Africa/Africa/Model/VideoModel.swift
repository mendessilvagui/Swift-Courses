//
//  VideosModel.swift
//  Africa
//
//  Created by Guilherme Mendes on 08/06/21.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}

