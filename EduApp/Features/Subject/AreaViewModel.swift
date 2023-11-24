//
//  subjectViewModel.swift
//  teste2educ
//
//  Created by Foundation10 on 23/11/23.
//

import Foundation
import SwiftUI

var subjects = [
    Area(name: "Math", color: .Red),
    Area(name: "English", color: .Red),
    Area(name: "Science", color: .Green),
    Area(name: "History", color: .Purple),
    Area(name: "Physics", color: .Orange),
    Area(name: "Biology", color: .Yellow),
]

var indices: [Int] {
    var leftSide: [Int] = []
    
    for i in subjects.indices {
        if i%2 == 0 {
            leftSide.append(i)
        }
    }
    
    return leftSide
}
