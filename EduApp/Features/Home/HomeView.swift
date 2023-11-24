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
        ScrollView {
            
            HomeViewHeader()
            
            VStack {
                Text("My Evolution")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .frame(alignment: .leading)
                
                Image("myEvolution")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    Image(systemName: "play")
                    Text("New Cycle")
                        .font(.system(size: 20))
                        .bold()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color("Gray"))
                .cornerRadius(8)
                
                
                AreaGridView()
                
                
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color.black)
        
    }
    
    
}
#Preview {
    HomeView().modelContainer(for: Area.self)
}
