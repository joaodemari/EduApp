//
//  LoadingView.swift
//  EduApp
//
//  Created by Foundation13 on 30/11/23.
//

import Foundation
import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                .foregroundStyle(Color("TomyColor"))
                .opacity(0.91)
            Image("loading-icon")
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
                
        }
    }
}
