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
    @State private var selectedAreaName = "none"
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
                    Picker("sjjdsjkj", selection: $selectedAreaName){
                        ForEach(areas){ area in
                            HStack{
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
        if let area = getAreaByNome(nome: selectedAreaName){
            let note = Note(color:area.color, descript: notesString)
            context.insert(note)
            area.notes.append(note)
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
