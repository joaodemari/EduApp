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
    @Binding var data: [Day]
    
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
