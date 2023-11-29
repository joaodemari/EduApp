//
//  AreagridComponent.swift
//  EduApp
//
//  Created by Foundation05 on 28/11/23.
//

import Foundation

//
//  AreaGridVIew.swift
//  EduApp
//
//  Created by Foundation05 on 24/11/23.
//

import Foundation
import SwiftData
import SwiftUI

struct AreaGridComponent: View {
    var cycle : Bool = false
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]

    let columns = [
        GridItem(.adaptive(minimum: 150))
        ]
    

    var body: some View {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(areas, id: \.self) { area in
                            AreaCard(cycle: cycle, area: area)
                                .background(area.color.getColor())
                                .cornerRadius(8)
                    }
            }
            .padding(.horizontal)
    }
}

#Preview{
    HomeView().modelContainer(for: Area.self)
}
