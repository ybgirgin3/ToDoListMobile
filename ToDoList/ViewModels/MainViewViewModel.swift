//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import FirebaseAuth
import Foundation


class MainViewViewModel: ObservableObject {
  @Published var currentUserId: String = ""
  private var handler: AuthStateDidChangeListenerHandle?
  
  init() {
    let handler = Auth.auth().addIDTokenDidChangeListener { [weak self] _, user in
      DispatchQueue.main.async {
        self?.currentUserId = user?.uid ?? ""
      }
    }
  }
  
  
  public var isSignedIn: Bool {
    return Auth.auth().currentUser != nil
  }
  
  
}
