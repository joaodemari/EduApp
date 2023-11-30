//
//  NoteView.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//

import Foundation
import SwiftUI
import SwiftData



struct NoteAreaSheet: View {

    var area:Area
    
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            List{
               
                    Section {
                        ForEach(area.notes){note in
                            Text(note.descript)
                        }
                    } header: {
                        Text(area.name)
                    }
            }
            .navigationTitle("Notes")
            .listStyle(.insetGrouped)
        }
    }
    
}


