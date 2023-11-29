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
    case Mint
    case Cyan
    case Indigo
    case Pink
    case Brown
    
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
        case .Mint:
            Color.mint
        case .Cyan:
            Color.cyan
        case .Indigo:
            Color.indigo
        case .Pink:
            Color.pink
        case .Brown:
            Color.brown
        }
    }
}
