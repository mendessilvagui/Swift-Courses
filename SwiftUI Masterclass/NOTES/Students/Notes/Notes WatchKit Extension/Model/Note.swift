//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Guilherme Mendes on 14/06/21.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
