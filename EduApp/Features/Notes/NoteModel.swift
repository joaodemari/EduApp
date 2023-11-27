//
//  NoteModel.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class Note: ObservableObject{
    var id = UUID()
    var date: Date?
    var area: Area?
    var color: ColorApp
    var descript: String
    
    init(id: UUID = UUID(), date: Date? = nil, area: Area? = nil, color: ColorApp, descript: String) {
        self.id = id
        self.date = date
        self.area = area
        self.color = color
        self.descript = descript
    }
    
    func cycleToString() -> String {
        return date?.description ?? ""
    }
}
