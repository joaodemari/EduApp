//
//  Area.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//


import SwiftUI

struct AreaSheetView: View {
    

    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Subject name")
                .font(.system(size: 20))
                .bold()
                .lineLimit(2)
            HStack {
                Spacer()
                Image(systemName: "play.fill")
            }
        }
        .padding()
    }
}
