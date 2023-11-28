//
//  ContentView.swift
//  teste2educ
//
//  Created by Foundation10 on 21/11/23.
//

import SwiftUI
import SwiftData
// trocar lastAcess p data

struct HomeView: View {
    
    var body: some View {
        NavigationStack{
            ScrollView {
                
                HomeViewHeader()
                
                VStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text("My Evolution")
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                            .frame(alignment: .leading)
                        ChartView()
                    }
                    HStack {
                        HStack {
                            Image(systemName: "play")
                            Text("New Cycle")
                                .font(.system(size: 20))
                                .bold()
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(8)
                        
                        Spacer()
                        
                        HStack {
                            NavigationLink(destination: NoteView()) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                                .frame(width: 150, height: 40)
                                                                .background(Color.blue)
                                                                .cornerRadius(5)
                                    ZStack {
                                        HStack {
                                            Image(systemName: "highlighter")
                                            Text("Notes")
                                                                        .font(.system(size: 20))
                                                                        .bold()
                                                                }
                                        }
                                    }
                                }
                            .navigationTitle("New Reminder")
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(8)
                    }
                    .padding()
                    AreaGridView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        
    }}
    
    
#Preview {
    HomeView().modelContainer(for: Note.self)
}
