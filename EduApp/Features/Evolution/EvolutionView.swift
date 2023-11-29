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




struct EvolutionView: View {

    var body: some View {
        NavigationView {
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
                        ChartView()
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
        .navigationTitle("My Evolution")
    }
}

