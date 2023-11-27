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
            Text("Note")
                .font(.system(size: 20))
                .bold()
            HStack {
                Spacer()
                Image(systemName: "play.fill")
            }
        }
        .padding()
    }
}
