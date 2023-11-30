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
    @Query private var notes: [Note]

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            List(notes, id: \.self) { note in
                Text(note.descript)
                    .swipeActions {
                                Button("Order") {
                                    print("Awesome!")
                                }
                                .tint(.green)
                            }
            }.listStyle(.insetGrouped)
                
        }
    }
        func addItem(){
            let note = Note(color: .Red, descript: "Português")
            context.insert(note)
        }
    
}


