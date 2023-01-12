//
//  PersonModel.swift
//  Europa
//
//  Created by Mehmet Seyhan on 12/01/2023.
//

import SwiftUI

struct Person: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
