//
//  SubjectCard.swift
//  teste2educ
//
//  Created by Foundation10 on 22/11/23.
//

import SwiftUI

struct AreaCard: View {
    
    var area: Area
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(area.name)
                .font(.headline)
                .bold()
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
    }
    
    func getStudyMinutes() -> Int{
        var sum = 0
        for studyDay in area.studyDays {
            sum += studyDay.minutes
            print(studyDay.minutes)
        }
        
        return sum
    }
}
#Preview{
    HomeView().modelContainer(for: Area.self)
}
