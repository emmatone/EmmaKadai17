//
//  CheckMark.swift
//  EmmaKadai17
//
//  Created by Emma
//

import SwiftUI

struct CheckMark: View {
    var body: some View {
        Image(systemName: "checkmark")
            .foregroundColor(.orange)
            .contentShape(Rectangle())
    }
}

struct CheckMark_Previews: PreviewProvider {
    static var previews: some View {
        CheckMark()
    }
}
