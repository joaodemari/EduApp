//
//  Item.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
