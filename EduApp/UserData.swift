//
//  UserData.swift
//  EduApp
//
//  Created by Foundation13 on 21/11/23.
//

//import SwiftData
//import Foundation
//
//
//@Model
//class UserData: SwiftData.PersistentModel{
//    var disciplines: [Discipline]
//    var events: [Events]
//    
//    init(disciplines: [Discipline], events: [Events]) {
//        self.disciplines = disciplines
//        self.events = events
//    }
//}
//
//@Model
//class Discipline: SwiftData.PersistentModel {
//    @Attribute(.unique) var name: String
//    var totalHours: Int
//    var weeklyHours: Int
//    var dailyHours: Int
//    var priority: Int
//    
//    init(name: String, totalHours: Int, weeklyHours: Int, dailyHours: Int, priority: Int) {
//        self.name = name
//        self.totalHours = totalHours
//        self.weeklyHours = weeklyHours
//        self.dailyHours = dailyHours
//        self.priority = priority
//    }
//}
//
//@Model
//class Events: SwiftData.PersistentModel{
//    var date: Date
//    var priority: Int
//    var discipline: Discipline?
//    
//    init(date: Date, priority: Int, discipline: Discipline? = nil) {
//        self.date = date
//        self.priority = priority
//        self.discipline = discipline
//    }
//}
