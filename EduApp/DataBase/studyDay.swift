//
//  studyDay.swift
//  EduApp
//
//  Created by Foundation05 on 27/11/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class studyDay: ObservableObject{
    var id = UUID()
    var day : Date
    var minutes : Int
    
    init() {
        self.day = Date.from(year: Date.currentYear, month: Date.currentMonth, day: Date.today)
        self.minutes = 0
    }
    
    init(year:Int,month:Int, day:Int, minutes:Int){
        self.day = Date.from(year: year, month: month, day:day)
        self.minutes = minutes
    }
    
    
    func addMinutes(minutes : Int){
        self.minutes += minutes
    }
}


extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}

extension Date {
    static var today: Int {
        return Calendar.current.component(.day, from: Date())
    }
}

extension Date {
    static var currentYear: Int {
        return Calendar.current.component(.year, from: Date())
    }
}

extension Date {
    static var currentMonth: Int {
        return Calendar.current.component(.month, from: Date())
    }
}

extension Date {
    static func daysInCurrentMonth() -> Int {
        let calendar = Calendar.current
        let currentDate = Date()
        guard let monthRange = calendar.range(of: .day, in: .month, for: currentDate) else {
            fatalError("Erro ao obter o intervalo de dias do mês")
        }
        return monthRange.count
    }
}
