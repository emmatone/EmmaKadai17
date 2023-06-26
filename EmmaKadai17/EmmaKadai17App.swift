//
//  EmmaKadai17App.swift
//  EmmaKadai17
//
//  Created by Emma
//

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
