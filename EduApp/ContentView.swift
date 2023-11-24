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
        NavigationStack{
            VStack{
                NavigationLink(destination: TimerView()) {
                    Text("New Cycle")
                }
                
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity).background(Color.black).foregroundColor(.white)
            VStack {
                
                Text("Tap on this button to add data")
                Button("Add an item"){
                    addItem()
                }
               
                List {
                    ForEach (areas) {area in
                        Text(area.name)
                    }.onDelete{indexes in
                        for index in indexes {
                            deleteItem(areas[index])
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    func addItem(){
        let area = Area(name: "Matemática", color: .Blue)
        context.insert(area)
    }
    
    func deleteItem(_ area: Area){
        context.delete(area)
    }


}

#Preview {
    ContentView().modelContainer(for: Area.self)
        
}
