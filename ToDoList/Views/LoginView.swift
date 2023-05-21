//
//  LoginView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import SwiftUI

struct LoginView: View {
  @State var email = ""
  @State var password = ""
  
  var body: some View {
    NavigationView {
      VStack {
        // Header
        HeaderView()
        // Login Form
        Form {
          TextField("Email Address", text: $email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          Button {
            // Attemp Login
          } label: {
            ZStack {
              RoundedRectangle(cornerRadius: 10)
              
              Text("Log In")
                .foregroundColor(Color.white)
                .bold()
            }
          }.padding()
          
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
