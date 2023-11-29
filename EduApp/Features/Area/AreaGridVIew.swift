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

    let columns = [
        GridItem(.adaptive(minimum: 150))
        ]
    

    var body: some View {
        HStack {
            Text("Subjects")
                .font(.title2)
                .bold()
            Button(action: {
                isPresented = true
            }, label:{
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.gray)
                    .imageScale(.medium)
            }).sheet(isPresented: $isPresented, content: {
                
                AreaSheetView()
            })
            Spacer()
            
        }
        .padding()
        AreaGridComponent()
 
    }
}

#Preview{
    HomeView().modelContainer(for: Area.self)
}
