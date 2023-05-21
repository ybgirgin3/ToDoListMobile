//
//  HeaderView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
      ZStack { // items top of each other like z-index
        RoundedRectangle(cornerRadius: 0)
          .foregroundColor(Color.pink)
          .rotationEffect(Angle(degrees: 15))
          // .ignoresSafeArea()
        VStack {
          Text("To Do List")
            .foregroundColor(Color.white)
            .font(.system(size: 50))
            .bold()
          
          Text("Get Things Done")
            .font(.system(size: 30))
            .foregroundColor(Color.white)
        }
        .padding(.top, 30)
      }
      .frame(width: UIScreen.main.bounds.width * 3, height: 300)
      .offset(y: -100)    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
