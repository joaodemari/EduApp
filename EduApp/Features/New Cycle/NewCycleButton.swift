//
//  New Cycke.swift
//  EduApp
//
//  Created by Foundation10 on 28/11/23.
//

import SwiftUI
import SwiftData


struct NewCycleButton:View{
    @Binding var showSmallSheet: Bool
    
    var body : some View{
        VStack {
            Button(action: {
                showSmallSheet.toggle()
            }, label: {
                HStack {
                    Image(systemName: "play")
                    Text("New Cycle")
                        .font(.system(size: 20))
                        .bold()
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity)
                .background(Color.red)
                .cornerRadius(8)})
        }
        
    }
}

//struct NewCycle: View {
//    var body: some View {
//        NavigationStack{
//            AreaGridComponent(cycle: true)
//        }
//    }
//}

#Preview {
    HomeView().modelContainer(for: Area.self)
}


