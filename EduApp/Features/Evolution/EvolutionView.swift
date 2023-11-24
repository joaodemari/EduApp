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
    var date: Date
    var hours: Int
    var color: Color
    var id = UUID()
    
//    func test(dates: [Date]) -> [Int] {
//        dates.compactMap({return getDay(date: $0)})
//    }
//    
//    func getDay(date: Date) -> Int {
//        var calendar = Calendar(identifier: .gregorian)
//        var components = calendar.dateComponents(in: .current, from: date)
//        
//        
//        return components.day ?? 0
//
//    }
}


extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}

struct EvolutionView: View {
    
    @State var data: [Day] = [
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
        ScrollView {
            VStack (alignment: .center, spacing: 58) {
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 308, height: 308)
                        .background(
                            EllipticalGradient(
                                stops: [
                                    Gradient.Stop(color: .black, location: 0.70),
                                    Gradient.Stop(color: Color(red: 1, green: 0, blue: 0), location: 1.00),
                                ],
                                center: UnitPoint(x: 0.5, y: 0.5)
                            )
                        )
                        .cornerRadius(308)
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
                .padding(.horizontal,48)
                VStack (alignment: .leading) {
                    Text("Last Month")
                        .font(.title.bold())
                        .foregroundColor(.white)
                    ChartView(data: $data)
                        .padding(.trailing, 36)
                        .padding(.bottom, 8)
                }
                .padding(.leading, 36)
                VStack (alignment: .leading) {
                    Text("Weekly Hours")
                        .font(.title.bold())
                        .foregroundColor(.white)
                    VStack {
                        HStack{
                            Circle()
                                .fill(Color("Green"))
                                .frame(width: 16, height: 16)
                            Text("Math")
                                .font(.title2.bold())
                            Spacer()
                            Text("5")
                                .font(.title2.bold())
                        }
                        .foregroundColor(.white)
                        .padding(.bottom, 12)
                        HStack{
                            Circle()
                                .fill(Color("Yellow"))
                                .frame(width: 16, height: 16)
                            Text("Biology")
                                .font(.title2.bold())
                            Spacer()
                            Text("3")
                                .font(.title2.bold())
                        }
                        .foregroundColor(.white)
                        .padding(.bottom, 12)
                        HStack{
                            Circle()
                                .fill(Color("Blue"))
                                .frame(width: 16, height: 16)
                            Text("History")
                                .font(.title2.bold())
                            Spacer()
                            Text("7")
                                .font(.title2.bold())
                        }
                        .foregroundColor(.white)
                    }
                    .padding(.trailing, 36)
                    //.padding(.leading, 36)
                    .padding(.top, 8)
                    .padding(.bottom, 24)
                    .background(.black)
                    .cornerRadius(16)
                }
                .padding(.leading, 36)
            }
            .padding(.horizontal, 24)
            .padding(.top, 100)
            .padding(.bottom, 24)
            .background(.black)
            .cornerRadius(16)
        }
    }
}



#Preview {
    EvolutionView()
}
