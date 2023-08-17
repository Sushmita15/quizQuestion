//
//  items.swift
//  quizQuestion
//
//  Created by Sushmita Mandal on 8/16/23.
//

import Foundation

import SwiftUI

struct Item: Identifiable {
    let id: UUID = UUID()
    var imageName: String
    var title: String
    var address: String
    var isFavorite: Bool = false
}

