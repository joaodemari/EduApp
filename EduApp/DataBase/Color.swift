//
//  Color.swift
//  EduApp
//
//  Created by Foundation05 on 23/11/23.
//

import Foundation
import SwiftUI

enum ColorApp:Codable, Hashable {
    case Green
    case Blue
    case Purple
    case Red
    case Yellow
    case Orange
    
    func getColor() -> Color {
        switch self {
        case .Green:
            Color.green
        case .Blue:
            Color.blue
        case .Purple:
            Color.purple
        case .Red:
            Color.red
        case .Yellow:
            Color.yellow
        case .Orange:
            Color.orange
        }
    }
}
