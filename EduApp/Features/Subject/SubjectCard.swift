//
//  SubjectCard.swift
//  teste2educ
//
//  Created by Foundation10 on 22/11/23.
//

import SwiftUI

struct SubjectCard: View {
    
    var area: Area
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(area.name)
                .font(.system(size: 20))
                .bold()
            Text(area.cycleToString())
                .lineLimit(2)
            HStack {
                Spacer()
                Image(systemName: "play.fill")
            }
        }
        .padding()
    }
}
