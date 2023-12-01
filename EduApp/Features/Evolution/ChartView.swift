//
//  ChartView.swift
//  EduApp
//
//  Created by Foundation13 on 22/11/23.
//

import Foundation
import Charts
import UIKit
import SwiftUI
import SwiftData

class AreaMock: Identifiable, Hashable {
    static func == (lhs: AreaMock, rhs: AreaMock) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
        hasher.combine(self.name)
    }
    
    var id = UUID()
    var name: String
    var lastCycle: Date?
    var color: ColorApp
    var studyDays: [StudyDayMock]
    
    init(id: UUID = UUID(), name: String, lastCycle: Date? = nil, color: ColorApp, studyDays: [StudyDayMock]) {
        self.id = id
        self.name = name
        self.lastCycle = lastCycle
        self.color = color
        self.studyDays = studyDays
    }
}

class StudyDayMock: Identifiable, Hashable {
    var id = UUID()
    var day: Date
    var minutes: Int
    
    init(year:Int,month:Int, day:Int, minutes:Int){
        self.day = Date.from(year: year, month: month, day:day)
        self.minutes = minutes
    }
    
    static func == (lhs: StudyDayMock, rhs: StudyDayMock) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
        hasher.combine(self.day)
    }
}

struct ChartView: View {
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    @Query private var studyDays: [studyDay]
    @State private var empty: [AreaMock] = [
        .init(name: "c", color: .Green, studyDays: [StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 25, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 12, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 21, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 29, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "b", color: .Purple, studyDays: [StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 25, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 12, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 21, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 29, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "a", color: .Blue, studyDays: [StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 25, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 12, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 21, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 29, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "d", color: .Red, studyDays: [StudyDayMock(year: 2023, month: 11, day: 28, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 21, minutes: 150), StudyDayMock(year: 2023, month: 11, day: 29, minutes: 150), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 250), StudyDayMock(year: 2023, month: 11, day: 22, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 14, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 16, minutes: 350), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 21, minutes: 150), StudyDayMock(year: 2023, month: 11, day: 6, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 7, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "e", color: .Yellow, studyDays: [StudyDayMock(year: 2023, month: 11, day: 5, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 10, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 4, minutes: 450), StudyDayMock(year: 2023, month: 11, day: 11, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 3, minutes: 550), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 2, minutes: 530), StudyDayMock(year: 2023, month: 11, day: 9, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 1, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "f", color: .Yellow, studyDays: [StudyDayMock(year: 2023, month: 11, day: 5, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 10, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 4, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 11, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 3, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 2, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 9, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 1, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
        .init(name: "g", color: .Green, studyDays: [StudyDayMock(year: 2023, month: 11, day: 5, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 10, minutes: 140), StudyDayMock(year: 2023, month: 11, day: 24, minutes: 200), StudyDayMock(year: 2023, month: 11, day: 4, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 11, minutes: 400), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 23, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 3, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 18, minutes: 150), StudyDayMock(year: 2023, month: 11, day: 17, minutes: 130), StudyDayMock(year: 2023, month: 11, day: 30, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 2, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 9, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 26, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 1, minutes: 50), StudyDayMock(year: 2023, month: 11, day: 27, minutes: 50)]),
    ]
    
    var body: some View {
        VStack {
            if studyDays.count > 0 {
                Chart {
                    ForEach(empty) { area in
                        ForEach(area.studyDays) { studyDay in
                            BarMark(
                                x: .value("Category", studyDay.day, unit: .day),
                                y: .value("Value", studyDay.minutes)
                            )
                            .foregroundStyle(area.color.getColor().gradient)
                        }
                    }
                }
                .chartXAxis(.visible)
                .chartXAxis {
                    AxisMarks(values: .automatic(desiredCount: 4)) {
                        AxisValueLabel()
                            .foregroundStyle(.gray)
                    }
                }
                .frame(width: 352, height: 200)
        
            } else {
                Chart {
                    ForEach(1...Date.daysInCurrentMonth(), id: \.self) { day in
                        ForEach(areas) { area in
                            let studyDay = area.studyDays.first(where: { Calendar.current.component(.day, from: $0.day) == day })
                            
                            if let unwrappedStudyDay = studyDay {
                                BarMark(x: .value("Category", unwrappedStudyDay.day, unit: .day),
                                        y: .value("Value", unwrappedStudyDay.minutes))
                                //                                    BarMark(
                                //                                        x: .value("Category", studyDay.day, unit: .day),
                                //                                        y: .value("Value", Double(studyDay.minutes))
                                //                                    )
                                //                                    .foregroundStyle(area.color.getColor().gradient)
                            } else {
                                BarMark(x: .value("Category", Date(), unit: .day),
                                        y: .value("Value", 0))
                                //                                    BarMark(
                                //                                        x: .value("Category", studyDay.day, unit: .day),
                                //                                        y: .value("Value", 0)
                                //                                    )
                                //                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                
            }
            //                .chartXAxis {
            //                    AxisMarks(values: .automatic(desiredCount: 6)) {
            //                        AxisValueLabel(format: .dateTime.day())
            //
            //                    }
            //                }
            //                .chartYScale(domain: 0...30)
            //                .frame(width: 352, height: 200)
            //                .chartXScale(domain: 0...30)
            //                .chartXAxis(.visible)
            //.background(Color.yellow)
        }
    }
}
//}



