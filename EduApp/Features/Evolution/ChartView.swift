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

struct ChartView: View {
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    
    var body: some View {
        Chart {
            ForEach(areas) {area in
                ForEach(area.studyDays){studyDay in
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
            AxisMarks(values: .automatic(desiredCount: 4))
        }
        
        .frame(width: 352, height: 200)
        //.background(.black)
        //.padding(.horizontal,36)
    }
    
    
}

