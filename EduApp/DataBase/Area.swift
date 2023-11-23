//
//  Item.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Area {
    var id = UUID()
    var name: String;
    var tasks: [String];
    var lastCycle: Date?
    var color: ColorApp
    
    init(name: String, color: ColorApp) {
        self.name = name
        self.tasks = []
        self.color = color
    }
}

