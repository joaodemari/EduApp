//
//  ContentView.swift
//
//  Created by Foundation10 on 21/11/23.
//

import SwiftUI
import SwiftData
// trocar lastAcess p data


class HomeViewModel: ObservableObject {
    @Published var showSmallSheet = false
    @Published var showAreaSheet = false
    @Published var goToTimer = false
    
    @Published var cicleSelected: Area = Area(name: "", color: ColorApp.Blue) {
        didSet {
            self.goToTimer = true
            self.showSmallSheet = false
        }
    }
    
    @Published var areaSelected: Area = Area(name: "", color: ColorApp.Blue) {
        didSet {
            self.showAreaSheet = true
        }
    }
    
}

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                
                
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundStyle(.white.gradient)
                            .opacity(0.4)
                        VStack(alignment: .leading) {
                            
                            HStack{
                                
                                Text("My Evolution")
                                    .font(.title)
                                    .bold()
                                    .frame(alignment: .leading)
                                Spacer()
                                Image("happy-tomy").resizable().scaledToFit().frame(maxHeight: 40)
                            }.padding()
                            NavigationLink(destination: EvolutionView(), label: {ChartView().padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 0))})
                        }
                    }
                    HStack{
                                            
                                            NewCycleButton(showSmallSheet: $viewModel.showSmallSheet)
                                            
                                            NavigationLink(destination: NoteView()){
                                                HStack{
                                                    Image(systemName: "book.pages.fill")
                                                    Text("Notes")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                }
                                                .foregroundColor(.white)
                                                
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity)
                                                .background(Color.grayDark)
                                                .cornerRadius(8)
                                            }
                                            
                                        }.padding()
                    
                    AreaGridView()
                        .environmentObject(viewModel)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .sheet(isPresented: $viewModel.showSmallSheet) {
                print("Sheet dismissed!")
            } content: {
                AreaGridComponent(cycle: true)
                    .environmentObject(viewModel)
                    .presentationDetents([.medium])
            }
            .sheet(isPresented: $viewModel.showAreaSheet) {
                print("Sheet dismissed!")
            } content: {
                NoteAreaSheet(area:viewModel.areaSelected)
            }
            
            
            .navigationDestination(isPresented: $viewModel.goToTimer) {
                TimerView(area: viewModel.cicleSelected)
            }
        }
    }
        
    }
    
    
