import Foundation

struct Fruit: Identifiable, Equatable {
    let id: String = UUID().uuidString
    var name: String
    var isChecked: Bool = false
}
