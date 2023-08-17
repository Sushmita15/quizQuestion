//
//  items.swift
//  quizQuestion
//
//  Created by Sushmita Mandal on 8/16/23.
//

import Foundation

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var address: String
}

