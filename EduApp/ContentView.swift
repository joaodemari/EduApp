//
//  ContentView.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    
    var body: some View{
        NavigationStack{
            VStack{
                NavigationLink(destination: TimerView()) {
                    Text("New Cycle")
                }
                
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity).background(Color.black).foregroundColor(.white)
        }
    }


}

#Preview {
    ContentView()
        
}
