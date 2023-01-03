//
//  Data.swift
//  Leak New
//
//  Created by Vũ Chiến Thắng on 03/01/2023.
//

import Foundation

struct Result: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
