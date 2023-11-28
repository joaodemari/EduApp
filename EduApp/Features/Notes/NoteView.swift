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
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(notes, id: \.self) { note in
                    NoteCard(note: note)
                        .background(note.color?.getColor())
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal)
        }
        //.navigationTitle("Notes")
    }
        func addItem(){
            let note = Note(color: .Red, descript: "Português")
            context.insert(note)
        }
    
}

#Preview{
    HomeView().modelContainer(for: Note.self)
}
