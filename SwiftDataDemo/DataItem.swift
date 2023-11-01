//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Ashish Langhe on 01/11/23.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        let uuid = UUID()  // Generate a new UUID
        self.id = uuid.uuidString
        self.name = name
    }
}
