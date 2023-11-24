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
    
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    
    var indices: [Int] {
        var leftSide: [Int] = []
        
        for i in areas.indices {
            if i%2 == 0 {
                leftSide.append(i)
            }
        }
        
        return leftSide
    }
   
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
                
                HStack {
                    Text("Subjects")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.green)
                        .imageScale(.large)
                }
                .padding()
                
                ForEach(indices, id: \.self) { indice in
                    HStack {
                        SubjectCard(area: areas[indice])
                            .background(areas[indice].color.getColor())
                            .cornerRadius(8)
                        
                        if indice+1 < subjects.count {
                            
                            SubjectCard(area: areas[indice+1])
                                .background(areas[indice+1].color.getColor())
                                .cornerRadius(8)
                            
                        } else {
                            
                            Spacer()
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                        }
                    }
                }
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color.black)
    }
}
#Preview {
    HomeView()
}
