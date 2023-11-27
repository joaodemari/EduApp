//
//  AreaGridVIew.swift
//  EduApp
//
//  Created by Foundation05 on 24/11/23.
//

import Foundation
import SwiftData
import SwiftUI

struct AreaGridView: View {
    @State var isPresented: Bool = false
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        HStack {
            Text("Subjects")
                .foregroundColor(.white)
                .font(.title)
                .bold()
            Spacer()
                .onTapGesture {
                    isPresented = true
                }
                
            Button(action: {
                isPresented = true
            }, label:{
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.green)
                    .imageScale(.large)
            }).sheet(isPresented: $isPresented, content: {
                HStack{
                    Text("djidjsijda")
                }
                //AreaSheetView(area: area)
            })
            
        }
        .padding()
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(areas, id: \.self) { area in
                    AreaCard(area: area)
                        .background(area.color.getColor())
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal)
    }
    
    func addItem(){
        let area = Area(name: "PortuguÊS", color: .Red)
        context.insert(area)
    }
}

#Preview{
    HomeView().modelContainer(for: Area.self)
}
