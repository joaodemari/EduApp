//
//  SubjectCard.swift
//  teste2educ
//
//  Created by Foundation10 on 22/11/23.
//

import SwiftUI

struct AreaCard: View {
    var cycle : Bool = false
    var area: Area
    
    var body: some View {
        HStack{
            Text(area.name)
                .font(.headline)
                .bold()
                
            Spacer()
            if(cycle){
                NavigationLink(destination:TimerView(area: area)){
                    Image(systemName: "play")
                }
                
            }
        }.foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
       
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
