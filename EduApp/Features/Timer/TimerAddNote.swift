//
//  TimerToDo.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import SwiftUI
import SwiftData


struct TimerAddNote:View{
    @State var shouldPresentSheet = false
    var notes:[Note]
    
    var body : some View{
        VStack {
            Button(action: {
                shouldPresentSheet.toggle()
            }, label: {
                HStack{
                    Image(systemName: "plus.circle.fill").resizable().aspectRatio(contentMode:.fit).frame(height: 32).foregroundColor(.green)
                    Text("Add New Task").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }.foregroundColor(.black)
                
            })
                        .sheet(isPresented: $shouldPresentSheet) {
                            print("Sheet dismissed!")
                        } content: {
                            NewNote()
                                .presentationDetents([.medium])
                                .modelContainer(for: Area.self)
                        }

                }
                    .padding()
    }
}

