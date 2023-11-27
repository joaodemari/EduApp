//
//  TimerToDo.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import SwiftUI
import SwiftData


struct TimerPresent:View{
    @State var shouldPresentSheet = false
    
    var body : some View{
        VStack {
            Button(action: {
                shouldPresentSheet.toggle()
            }, label: {
                HStack{
                    Image(systemName: "plus.circle.fill").resizable().aspectRatio(contentMode:.fit).frame(height: 32)
                    Text("Adicionar Lembrete").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }.foregroundColor(.white)
                
            })
                        .sheet(isPresented: $shouldPresentSheet) {
                            print("Sheet dismissed!")
                        } content: {
                            TimerToDo()
                        }

                }
                    .padding()
    }
}

struct TimerToDo: View{

    
    var body: some View {
        VStack {
            
        }
    }

    private func addItem() {
        
    }

    private func deleteItems(offsets: IndexSet) {
    }
}

//#Preview{
//}
