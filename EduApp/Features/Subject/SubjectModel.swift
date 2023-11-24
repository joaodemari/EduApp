//
//  Subject.swift
//  teste2educ
//
//  Created by Foundation10 on 23/11/23.
//

import Foundation
import SwiftUI

struct SubjectModel: Hashable {
    var id = UUID()
    var name: String
    var lastAccess: String
    var color: Color
}
