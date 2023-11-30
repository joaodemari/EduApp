//
//  AreaSheetView.swift
//  EduApp
//
//  Created by Foundation05 on 30/11/23.
//

import Foundation
import SwiftUI

struct AreaSheetView: View {
    var area: Area
    var body: some View {
        VStack{
            Text(area.name)
        }
    }
}
