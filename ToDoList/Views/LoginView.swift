//
//  LoginView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()
  // @State var email = ""
  // @State var password = ""
  
  var body: some View {
    NavigationView {
      VStack {
        // Header
        HeaderView(title: "To Do List",
                   subTitle: "Get Things Done" ,
                   angle: 15,
                   background: Color.pink)
        // Login Form
        // * error message *

        
        Form {
          
          if !viewModel.errorMessage.isEmpty {
            Text(viewModel.errorMessage)
              .foregroundColor(Color.red)
          }
          
          TextField("Email Address", text: $viewModel.email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .autocorrectionDisabled()
          
          SecureField("Password", text: $viewModel.password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .autocorrectionDisabled()
          
          TLButton(
            title: "Log In",
            background: .blue
          ) {
            viewModel.login()
          }
          .padding()
          
        }
        
        // Create Account
        VStack {
          Text("New Around Here?")
          NavigationLink("Create An Account?",
                         destination: RegisterView() )
        }.padding(.bottom, 50)
        
        Spacer()
      }
    }
  }
  
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
