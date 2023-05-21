//
//  ContentView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//


import SwiftUI

struct MainView: View {
  @StateObject var viewModel = MainViewViewModel()
  
  
  var body: some View {
    if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
      ToDoListView()
    } else {
      LoginView()
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
