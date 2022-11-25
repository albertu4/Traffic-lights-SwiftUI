//
//  TrafficLightView.swift
//  Traffic lights
//
//  Created by Михаил Иванов on 15.05.2022.
//

import SwiftUI

struct TrafficLight: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100.0, height: 100.0)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight(color: .green, opacity: 0.5)
    }
}
