//
//  NoteView.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//

import Foundation
import SwiftUI
import SwiftData



struct NoteView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    @Query private var notes:[Note]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
         if(notes.isEmpty) {
            Text("No notes yet")
                .font(.title).bold()
        } else {
        NavigationView {
            List{
                ForEach(areas) { area in
                    Section {
                        ForEach(area.notes){note in
                            Text(note.descript)
                        }
                    } header: {
                        Text(area.name)
                    }
                }
                Section {
                    ForEach(notes){note in
                        if(note.color == ColorApp.Gray){
                            Text(note.descript)}
                    }
                } header: {
                    Text("Extra Notes")
                }
                
                
            }
            .navigationTitle("Notes")
            .listStyle(.insetGrouped)
        }
        }

    }
    func addItem(){
        let note = Note(color: .Red, descript: "Português")
        context.insert(note)
    }
    
}


