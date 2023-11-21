//
//  EvolutionView.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import Foundation
import SwiftUI
import SwiftData
import Charts

struct Day: Identifiable {
    var day: String
    var hours: Double
    var color: Color
    var id = UUID()
}


let data: [Day] = [
    .init(day: "13", hours: 2, color: Color("Green")),
    .init(day: "13", hours: 1, color: Color("Red")),
    .init(day: "14", hours: 3, color: Color("Green")),
    .init(day: "15", hours: 2, color: Color("Red")),
    .init(day: "16", hours: 5, color: Color("Orange")),
    .init(day: "16", hours: 3, color: Color("Yellow")),
    .init(day: "17", hours: 3, color: Color("Orange")),
    .init(day: "18", hours: 4, color: Color("Yellow")),
    .init(day: "19", hours: 2, color: Color("Purple")),
    .init(day: "20", hours: 3, color: Color("Green")),
    .init(day: "21", hours: 6, color: Color("Blue")),
    .init(day: "22", hours: 2, color: Color("Green")),
    .init(day: "23", hours: 1, color: Color("Red")),
    .init(day: "24", hours: 3, color: Color("Green")),
    .init(day: "25", hours: 2, color: Color("Red")),
    .init(day: "26", hours: 5, color: Color("Orange")),
    .init(day: "27", hours: 3, color: Color("Yellow")),
    .init(day: "28", hours: 3, color: Color("Orange")),
    .init(day: "29", hours: 4, color: Color("Yellow")),
    .init(day: "30", hours: 2, color: Color("Purple")),
    .init(day: "30", hours: 3, color: Color("Green")),
    .init(day: "31", hours: 6, color: Color("Blue")),
]

struct EvolutionView: View {
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 58) {
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 310, height: 310)
                        .background(
                            EllipticalGradient(
                                stops: [
                                    Gradient.Stop(color: .black, location: 0.70),
                                    Gradient.Stop(color: Color(red: 1, green: 0, blue: 0), location: 1.00),
                                ],
                                center: UnitPoint(x: 0.5, y: 0.5)
                            )
                        )
                        .cornerRadius(310)
                    Circle()
                        .fill(.black)
                        .frame(width: 260, height: 260)
                    VStack {
                        Text("45")
                        
                            .font(.system(size: 112).bold())
                            .foregroundColor(.white)
                        Text("days")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                    }
                }
                Chart{
                    ForEach(data) { shape in
                        BarMark(
                            x: .value("Category", shape.day),
                            y: .value("Value", shape.hours)
                        )
                        .foregroundStyle(shape.color)
                    }
                }
                .frame(width: 300, height: 200)
                .background(.black)
                VStack {
                    HStack{
                        Text("Math")
                            .font(.title.bold())
                        
                        Spacer()
                        
                        Text("0")
                            .font(.title.bold())
                    }
                    .foregroundColor(.white)
                }
//                .padding(.horizontal, 100)
                .padding(.top, 0)
//                .padding(.bottom, 422)
                .background(.black)
                .cornerRadius(16)
            }
            .padding(.horizontal, 100)
            .padding(.top, 100)
            //        .padding(.bottom, )
            .background(.black)
            .cornerRadius(16)
        }
    }
}

#Preview {
    EvolutionView()
    
}
