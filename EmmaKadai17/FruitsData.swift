//
//  FruitsData.swift
//  EmmaKadai17
//
//  Created by Emma
//

import Foundation

struct Fruit: Identifiable, Equatable, Hashable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}

class Fruits: ObservableObject {
    @Published var fruitsData = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true)
    ]

    /// この関数は新たにフルーツを追加し、成功したらtrueを返し、成功しなければfalseを返します
    /// 新規フルーツ名が空の時はfalseを返します
    func addNewFruitIfPossible(_ fruitName: String) -> Bool {
        // 文字列の両端から空白を削除
        let trimmedText = fruitName.trimmingCharacters(in: .whitespaces)
        // 文字列が空白でなかったらフルーツ名を追加してtrueを返す
        if trimmedText.isEmpty {
//            print("空なので追加できません")
            return false
        } else {
            fruitsData.append(Fruit(name: trimmedText))
//            print("追加しました", Fruit(name: trimmedText))
            return true
        }
    }

    /// この関数はタップされたフルーツのチェックマークを反転させ、成功したらtrueを返し、成功しなければfalseを返します
    func toggleIsCheckedIfPossible(_ fruit: Fruit) -> Bool {
//        print("反転させるのは", fruit)
        // いまタップされたのは何番目かをfirstIndex(where:)で見つける。見つけられなかったら終了
        guard let index = fruitsData.firstIndex(where: { fruit.id == $0.id }) else {
            return false
        }
        // チェックマークを反転させる
        fruitsData[index].isChecked.toggle()
//        print("反転後は", fruitsData[index])
        return true
    }

    /// この関数は、既存フルーツの名前を更新し、成功したらtrueを返し、成功しなければfalseを返します
    /// 新しいフルーツ名が空の時は更新せず、falseを返します
    func updateFruitNameIfPossible(_ fruit: Fruit, newFruitName: String) -> Bool {
        // 文字列の両端から空白を削除
        let trimmedText = newFruitName.trimmingCharacters(in: .whitespaces)

        // 文字列が空白でなく、インデックスを取得できたらフルーツの名前を更新してtrueを返す
        if trimmedText.isEmpty {
//            print("空なので更新できません")
            return false
        } else {
            guard let index = fruitsData.firstIndex(where: { fruit.id == $0.id }) else {
//                print("見つかりません")
                return false
            }
            fruitsData[index].name = trimmedText
//            print("更新しました", fruitsData[index])
            return true
        }
    }
}
