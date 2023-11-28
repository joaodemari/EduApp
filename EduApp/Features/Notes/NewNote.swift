//
//  NewReminder.swift
//  Tarefa1
//
//  Created by Foundation17 on 31/10/23.
//

import Foundation
import SwiftUI

struct NewNote: View {
    
   
    @State private var title = ""
    @State private var notes = ""
    @State private var isSubscribed = false
    @FocusState private var isTextFieldFocused: Bool
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $title).focused($isTextFieldFocused)
                        .onAppear {
                            isTextFieldFocused = true
                        }
                    //.focused($isFocused)
                    
                    TextField("Notes", text: $notes)
                        .frame(height:100)
                }
                
                
            }
            
            .navigationTitle("Notes").background(.gray)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Add") {
                        addItem()
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                       dismiss()
                    }
                }
                
            }
            
        }
        .background(.gray)
    }
    
    func addItem(){
        let note = Note(color: .Red, descript: "Tirar o lixo")
        context.insert(note)
    }
}
