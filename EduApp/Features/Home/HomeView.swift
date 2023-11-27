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
        NavigationStack {
            ScrollView {
                
                HomeViewHeader()
                
                VStack {
                        NavigationLink(destination: EvolutionView()) {
                            ZStack {
                                
                                
                                VStack(alignment: .leading) {
                                    Text("My Evolution")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .bold()
                                        .frame(alignment: .leading)
                                    ChartView()
                                }
                            }
                    }
                        .navigationTitle("My Evolution")
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 150, height: 40)
                                .background(Color.blue)
                                .cornerRadius(5)
                            HStack {
                                Image(systemName: "play")
                                Text("New Cycle")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                        }
                        Spacer()
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
                        .navigationTitle("Notes")
                        
                        
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("Gray"))
                    .cornerRadius(8)
                    AreaGridView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
    }
}
#Preview {
    HomeView().modelContainer(for: Note.self)
}
