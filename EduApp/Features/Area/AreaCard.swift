//
//  SubjectCard.swift
//  teste2educ
//
//  Created by Foundation10 on 22/11/23.
//

import SwiftUI

struct AreaCard: View {
    @EnvironmentObject var homeViewModel: HomeViewModel

    var cycle : Bool = false
    var area: Area
    
    var body: some View {
            Button {
                if cycle {
                    homeViewModel.cicleSelected = area
                } else {
                    homeViewModel.areaSelected = area
                }
            } label: {
                HStack{
                    Text(area.name)
                        .font(.headline)
                        .bold()
                        
                    Spacer()
                    if(cycle){
                        Image(systemName: "play")
                    }
            }
        }
        .foregroundColor(.white)
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
    HomeView()
}
