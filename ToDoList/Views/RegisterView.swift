//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import SwiftUI

struct RegisterView: View {
  @StateObject var viewModel = RegisterViewViewModel()

  
  var body: some View {
    VStack {
      // Header
      HeaderView(title: "Register",
                 subTitle: "Start Organizing Todos" ,
                 angle: -15,
                 background: Color.green)
      // Register
      
      Form {
        TextField("Full Name", text: $viewModel.name)
          .textFieldStyle(DefaultTextFieldStyle())
          .autocorrectionDisabled()
        
        TextField("Email Address", text: $viewModel.email)
          .textFieldStyle(DefaultTextFieldStyle())
          .autocapitalization(.none)
          .autocorrectionDisabled()
        
        SecureField("Password", text: $viewModel.password)
          .textFieldStyle(DefaultTextFieldStyle())
        
        TLButton(
          title: "Register",
          background: .green
        ) {
          viewModel.register()
        }.padding()
      }
      Spacer()
      
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
