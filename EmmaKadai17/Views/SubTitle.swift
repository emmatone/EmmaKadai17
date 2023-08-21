import SwiftUI

struct SubTitle: View {
    var body: some View {
        Text("項目を削除する機能を追加")
            .font(.headline)
            .padding(.bottom, 15)
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity)
            .background(.teal.opacity(0.2))
    }
}

struct SubTitle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SubTitle()
            Spacer()
        }
    }
}
