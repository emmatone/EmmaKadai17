#  課題17 既存の項目の名前を変更できる機能

## OverView
- 4つのフルーツ名がリスト形式で表示される。
- フルーツ名にはチェックマークが付いているものと付いていないものがある
- フルーツ名を追加する機能を追加（課題14）
- フルーツ名をタップするとチェックマークが切り替わる機能を追加（課題15）
- 既存の項目の名前を変更できる機能を追加（課題16)
- 既存の項目を削除する機能を追加（課題17）


## Memo
- SwiftUI
- List
- Label
- Identifiable, Equatable
- ObservableObject/EnvironmentObject
- @Environment
- gurad let
- 未入力や、空白スペースのときは追加されないようにした。.trimmingCharacters(in: .whitespaces)
- 配列の要素を検索してインデックスを取得するため、.firstIndex(of:)からidで検索するためfirstIndex(where:)に変更。
- .onTapGestureでタップの反応範囲を指定するため、.contentShapeを使用
- 新規追加と既存更新の場合でフルーツ名編集画面を共有するようにした。
- .swipActions
