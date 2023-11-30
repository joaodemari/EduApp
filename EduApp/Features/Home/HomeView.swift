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
    @Published var goToTimer = false
    @Published var cicleSelected: Area = Area(name: "", color: ColorApp.Blue) {
        didSet {
            self.goToTimer = true
            self.showSmallSheet = false
        }
    }
}

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
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
            .navigationDestination(isPresented: $viewModel.goToTimer) {
                TimerView(area: viewModel.cicleSelected)
            }
        }
    }
        
    }
    
    
