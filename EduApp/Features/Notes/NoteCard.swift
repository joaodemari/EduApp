//
//  NoteCard.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//

import SwiftUI

struct NoteCard: View {
    
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(note.descript)
                .font(.system(size: 20))
//            HStack {
//                Image(systemName: "play.fill")
//            }
        }
        .padding()
    }
}


