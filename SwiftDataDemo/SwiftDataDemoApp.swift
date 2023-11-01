//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Ashish Langhe on 01/11/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
