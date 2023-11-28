//
//  NewReminder.swift
//  Tarefa1
//
//  Created by Foundation17 on 31/10/23.
//

import Foundation
import SwiftUI
import SwiftData

struct NewNote: View {
    
    
    @State private var notesString = ""
    @State private var isSubscribed = false
    @FocusState private var isTextFieldFocused: Bool
    @State private var selectedOption = 0
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    @Query private var areas: [Area]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Notes", text: $notesString)
                        .frame(height:100)
                }
                Section{
                    Picker("sjjdsjkj", selection: $selectedOption){
                        ForEach(areas){ area in
                            HStack{
                                Circle().fill(area.color.getColor()).frame(width: 30, height: 30)
                                Text(area.name)
                            }
                                
                            
                        }
                    }
                    
                    
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
        let note = Note(color: .Red, descript: notesString)
    }
}
