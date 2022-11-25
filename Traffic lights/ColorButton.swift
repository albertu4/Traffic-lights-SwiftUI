//
//  ColorButtonView.swift
//  Traffic lights
//
//  Created by Михаил Иванов on 25.11.2022.
//

import SwiftUI

struct ColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200.0, height: 60.0)
        .background(Color.blue)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ColorButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(title: "START", action: {})
    }
}
