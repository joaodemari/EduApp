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
    @State private var selectedAreaName = "No Option"
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
                Section {
                                    Picker("Area", selection: $selectedAreaName) {
                                        ForEach(self.makeAreaSelection(), id: \.self) { area in
                                            Text(area)
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
    
    func makeAreaSelection() -> [String] {
        var array = ["No Option"]
        
        for area in areas {
            array.append(area.name)
        }
        
        return array
    }
    
    func addItem(){
        if let area = getAreaByNome(nome: selectedAreaName){
            let note = Note(color:area.color, descript: notesString)
            context.insert(note)
            area.notes.append(note)
        } else{
            let note = Note(color:.Gray, descript: notesString)
            context.insert(note)
        }
    }
    
    func getAreaByNome(nome:String) -> Area?{
        for area in areas {
            if(area.name == nome){
                return area
            }
        }
        return nil
    }
}
