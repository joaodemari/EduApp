//
//  TimerView-Final.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
//

import SwiftUI
import SwiftData


struct TimerView: View {
    
    var area: Area

    var body: some View {
        VStack{
            TimerCircle(area:area, gradientColor:area.color.getColor())
            TimerPresent()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.black)
    }
}


#Preview{
    TimerView(area:Area(name:"SwiftUI", color:.Blue))
}
