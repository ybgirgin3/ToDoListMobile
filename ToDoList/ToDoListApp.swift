//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
  init() {
    FirebaseApp.configure()
  }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
