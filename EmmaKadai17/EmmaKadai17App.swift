import SwiftUI

@main
struct EmmaKadai17App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Fruits())
        }
    }
}
