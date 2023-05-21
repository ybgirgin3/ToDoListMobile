//
//  HeaderView.swift
//  ToDoList
//
//  Created by Yusuf Berkay Girgin on 21.05.2023.
//

import SwiftUI

struct HeaderView: View {
  let title: String
  let subTitle: String
  let angle: Double
  let background: Color
  
  var body: some View {
    ZStack { // items top of each other like z-index
      RoundedRectangle(cornerRadius: 0)
        .foregroundColor(background)
        .rotationEffect(Angle(degrees: angle))
      // .ignoresSafeArea()
      VStack {
        Text(title)
          .font(.system(size: 50))
          .foregroundColor(Color.white)
          .bold()
        
        Text(subTitle)
          .font(.system(size: 30))
          .foregroundColor(Color.white)
      }
      .padding(.top, 80)
    }
    .frame(width: UIScreen.main.bounds.width * 3, height: 300)
    .offset(y: -150)
    
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(title: "Title",
               subTitle: "SubTitle",
               angle: 15,
               background: .blue)
  }
}
