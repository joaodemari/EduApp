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
    @State var jack: Bool = false
    
    var body: some View {
        HStack{
            Text(area.name)
                .font(.headline)
                .bold()
                
            Spacer()
            if(cycle){
                Button(action: {
                    homeViewModel.cicleSelected = area
                }, label: {
                    Image(systemName: "play")
                })
//                NavigationLink(destination:TimerView(area: area)){
//                    Image(systemName: "play")
//                }
                
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
    HomeView()
}
