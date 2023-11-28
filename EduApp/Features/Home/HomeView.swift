//
//  ContentView.swift
//  teste2educ
//
//  Created by Foundation10 on 21/11/23.
//

import SwiftUI
import SwiftData
// trocar lastAcess p data

struct HomeView: View {
    
    var body: some View {
        NavigationStack{
            ScrollView {
                
                HomeViewHeader()
                
                VStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text("My Evolution")
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                            .frame(alignment: .leading)
                        ChartView()
                    }
                    HStack{
                        
                        
                        
                        HStack {
                            Image(systemName: "play")
                            Text("New Cycle")
                                .font(.system(size: 20))
                                .bold()
                        }
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                        
                        
                        NavigationLink(destination: NoteView().modelContainer(for: Note.self)){
                            HStack{
                                Image(systemName: "book.pages.fill")
                                Text("Notes")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:.infinity)
                            .background(Color.grayDark)
                            .cornerRadius(8)
                        }
                        
                    }.padding()
                    
                    AreaGridView()
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            
        }
    }
        
    }
    
    
#Preview {
    HomeView().modelContainer(for: Area.self)
}
