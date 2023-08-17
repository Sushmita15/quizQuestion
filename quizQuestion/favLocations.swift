//
//  favLocations.swift
//  quizQuestion
//
//  Created by Sushmita Mandal on 8/17/23.
//

import Foundation

struct Product: Identifiable { 
    let id: UUID = UUID()
    let name: String
  //  let address: String
    var isFavorite: Bool = false
}
