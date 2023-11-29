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
final class Area: ObservableObject{
    var id = UUID()
    var name: String;
    var tasks: [String];
    var lastCycle: Date?
    var color: ColorApp
    var studyDays : [studyDay] = []
    var notes:[Note] = []
    
    init(name: String, color: ColorApp) {
        self.name = name
        self.tasks = []
        self.color = color
    }
    
    func cycleToString() -> String {
        return lastCycle?.description ?? ""
    }
    
    func addStudyDay() -> studyDay{
        let studyDayFunc:studyDay = studyDay()
        studyDays.append(studyDayFunc)
        return studyDayFunc
    }
}
