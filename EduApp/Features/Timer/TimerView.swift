//
//  TimerView-Final.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import SwiftUI


struct TimerView: View {
    var body: some View {
        VStack{
            TimerCircle()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.black)
    }
}


#Preview{
    TimerView()
}
