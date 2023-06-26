//
//  FruitRow.swift
//  EmmaKadai17
//
//  Created by Emma
//

import SwiftUI

struct FruitRow: View {
    let fruit: Fruit

    var body: some View {
        VStack {
            HStack {
                Label {
                    Text(fruit.name)
                }
            icon: {
                if fruit.isChecked {
                    CheckMark()
                } else {
                    CheckMark()
                        .hidden()
                }
            }
                Spacer()
            }
            .padding(.vertical, 10)
            .contentShape(Rectangle())
        }
    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
            FruitRow(fruit: Fruit(name: "りんご", isChecked: true))
            FruitRow(fruit: Fruit(name: "みかん", isChecked: false))
        }
        .listStyle(.inset)
    }
}
