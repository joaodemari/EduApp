//
//  TimerView-Final.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import SwiftUI
import SwiftData


struct TimerView: View {
    
    @EnvironmentObject var area: Area

    var body: some View {
        VStack{
            TimerCircle()
            TimerPresent()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.black)
    }
}


#Preview{
    TimerView()
}
