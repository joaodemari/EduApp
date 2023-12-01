//
//  ContentView.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    
    var body: some View{
        HomeView()
    }
    
    func addItem(){
        let area = Area(name: "Matemática", color: .Blue)
        context.insert(area)
    }
    
    func deleteItem(_ area: Area){
        context.delete(area)
    }


}

