//
//  studyDay.swift
//  EduApp
//
//  Created by Foundation05 on 27/11/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class studyDay: ObservableObject{
    var id = UUID()
    var day : Date
    var minutes : Int
    
    init() {
        self.day = Date.now
        self.minutes = 0
    }
    
    func addMinutes(minutes : Int){
        self.minutes += minutes
    }
}

