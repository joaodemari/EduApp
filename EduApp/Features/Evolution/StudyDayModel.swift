//
//  StudyDayModel.swift
//  EduApp
//
//  Created by Foundation13 on 24/11/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class StudyDayModel: ObservableObject{
    var id = UUID()
    var date: Date
    var studyHours: Double
    
    init(id: UUID = UUID(), date: Date, studyHours: Double) {
        self.id = id
        self.date = date
        self.studyHours = studyHours
    }
}
