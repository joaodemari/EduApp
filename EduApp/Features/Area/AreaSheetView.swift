//
//  Area.swift
//  EduApp
//
//  Created by Foundation13 on 27/11/23.
//


import SwiftUI

struct AreaSheetView: View {
    
    @State private var title = ""
    @State private var selectedOption = 0
    @FocusState private var isTextFieldFocused: Bool
    private var options = [String]()
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    @State private var bgColor =
    Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    @State private var selectedColor: ColorApp?
    @State private var circleFrame:CGFloat = 30
    @State private var selectedIndex: Int = -1
    
    let allowedColors: [ColorApp] = [ColorApp.Red, ColorApp.Blue, ColorApp.Green, ColorApp.Orange, ColorApp.Purple, ColorApp.Yellow,
                                     ColorApp.Mint, ColorApp.Cyan, ColorApp.Indigo, ColorApp.Pink, ColorApp.Brown,
                                     
    ]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $title).focused($isTextFieldFocused)
                        .onAppear {
                            isTextFieldFocused = true
                        }
                }
                
                Section {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                        ForEach(0..<allowedColors.count, id: \.self) { i in
                            Circle()
                                .scale(selectedIndex == i ? 1.5 : 1.0)
                                .fill(allowedColors[i].getColor())
                                .frame(width: circleFrame, height: circleFrame)
                                .onTapGesture {
                                    selectedColor = allowedColors[i]
                                    selectedIndex = i
                                }
                        }
                    }
                    .padding()
                } footer: {
                    EmptyView()
                }
                .padding(.top, -6)
                
            }
            
            .navigationTitle("New Subject").background(.gray)
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
        let area = Area(name: title, color: selectedColor ?? ColorApp.Blue)
        context.insert(area)
    }
}

#Preview {
    HomeView().modelContainer(for: Area.self)
}
