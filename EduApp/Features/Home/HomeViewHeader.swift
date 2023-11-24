//
//  HomeViewHeader.swift
//  teste2educ
//
//  Created by Foundation10 on 23/11/23.
//

import SwiftUI

struct HomeViewHeader: View {
    var body: some View {
        HStack {
            Image("tomato")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 130, maxHeight: 130)
            Spacer()
            Image("sessenta")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 80, maxHeight: 80)
            Image("doismil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 100, maxHeight: 100)
            Spacer()
            Image(systemName: "bell.fill")
                .imageScale(.large)
                .foregroundColor(.gray)
            
        }
        .padding()
    }
}

#Preview {
    HomeViewHeader()
}
