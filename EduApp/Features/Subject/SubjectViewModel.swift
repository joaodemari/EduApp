//
//  subjectViewModel.swift
//  teste2educ
//
//  Created by Foundation10 on 23/11/23.
//

import Foundation
import SwiftUI

var subjects = [
    SubjectModel(name: "Math", lastAccess: "Last Cycle: August 5th", color: .white),
    SubjectModel(name: "English", lastAccess: "Last Cycle: August 5th", color: .red),
    SubjectModel(name: "Science", lastAccess: "Last Cycle: August 5th", color: .green),
    SubjectModel(name: "History", lastAccess: "Last Cycle: August 5th", color: .white),
    SubjectModel(name: "Physics", lastAccess: "Last Cycle: August 5th", color: .blue),
    SubjectModel(name: "Biology", lastAccess: "Last Cycle: August 5th", color: .white),
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
