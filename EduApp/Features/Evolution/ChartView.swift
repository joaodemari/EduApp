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

struct ChartView: View {
    var data: [Day] = [
        .init(date: Date.from(year: 2023, month: 12, day: 1), hours: 2, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 2), hours: 1, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 3), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 4), hours: 2, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 5), hours: 5, color: Color("Orange")),
        .init(date: Date.from(year: 2023, month: 12, day: 6), hours: 3, color: Color("Yellow")),
        .init(date: Date.from(year: 2023, month: 12, day: 7), hours: 3, color: Color("Orange")),
        .init(date: Date.from(year: 2023, month: 12, day: 8), hours: 4, color: Color("Yellow")),
        .init(date: Date.from(year: 2023, month: 12, day: 9), hours: 2, color: Color("Purple")),
        .init(date: Date.from(year: 2023, month: 12, day: 10), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 11), hours: 6, color: Color("Blue")),
        .init(date: Date.from(year: 2023, month: 12, day: 12), hours: 2, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 13), hours: 1, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 14), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 15), hours: 2, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 16), hours: 2, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 17), hours: 1, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 18), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 19), hours: 2, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 20), hours: 5, color: Color("Orange")),
        .init(date: Date.from(year: 2023, month: 12, day: 21), hours: 3, color: Color("Yellow")),
        .init(date: Date.from(year: 2023, month: 12, day: 22), hours: 3, color: Color("Orange")),
        .init(date: Date.from(year: 2023, month: 12, day: 23), hours: 4, color: Color("Yellow")),
        .init(date: Date.from(year: 2023, month: 12, day: 24), hours: 2, color: Color("Purple")),
        .init(date: Date.from(year: 2023, month: 12, day: 25), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 26), hours: 6, color: Color("Blue")),
        .init(date: Date.from(year: 2023, month: 12, day: 27), hours: 2, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 28), hours: 1, color: Color("Red")),
        .init(date: Date.from(year: 2023, month: 12, day: 29), hours: 3, color: Color("Green")),
        .init(date: Date.from(year: 2023, month: 12, day: 30), hours: 2, color: Color("Red")),
    ]
    
    var body: some View {
        Chart {
            ForEach(data) { shape in
                BarMark(
                    x: .value("Category", shape.date, unit: .day),
                    y: .value("Value", shape.hours)
                )
                .foregroundStyle(shape.color.gradient)
            }
        }
        .chartXAxis(.visible)
        .chartXAxis {
            AxisMarks(values: .automatic(desiredCount: 4)) {
                AxisValueLabel()
                    .foregroundStyle(.white)
            }
        }
        
        .frame(width: 352, height: 200)
        .background(.black)
        //.padding(.horizontal,36)
    }
}


#Preview {
    EvolutionView()
}
