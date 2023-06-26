//
//  FruitEditorView.swift
//  EmmaKadai17
//
//  Created by Emma
//

import SwiftUI

struct FruitEditorView: View {
    enum Mode {
        case add
        case edit(Fruit)

        var title: String {
            switch self {
            case .add:
                return "新規フルーツを登録"
            case .edit:
                return "フルーツを更新"
            }
        }

        var initialName: String {
            switch self {
            case .add:
                return ""
            case .edit(let fruit):
                return fruit.name
            }
        }
    }

    @EnvironmentObject var fruits: Fruits
    @Environment(\.dismiss) var dismiss
    let mode: Mode
    @State var newFruitName: String = ""

    var body: some View {
        NavigationStack {
            HStack {
                Text("名前")
                    .padding(.trailing, 20)
                TextField("", text: $newFruitName)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(50)
            Spacer()
                .navigationTitle(mode.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(Color.teal.opacity(0.2), for: .navigationBar)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Save") {
                            switch mode {
                            case .add:
                                _ = fruits.addNewFruitIfPossible(newFruitName)
                            case .edit(let fruit):
                                _ = fruits.updateFruitNameIfPossible(fruit, newFruitName: newFruitName)
                            }
                            dismiss()
                        }
                    }
                }
        }
        .onAppear(perform: {
            newFruitName = mode.initialName
        })
    }
}

struct FruitEditorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitEditorView(mode: .add)
                .environmentObject(Fruits())
            FruitEditorView(mode: .edit(Fruits().fruitsData[0]))
                .environmentObject(Fruits())
        }
    }
}
