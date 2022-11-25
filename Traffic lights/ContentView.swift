//
//  ContentView.swift
//  Traffic lights
//
//  Created by Михаил Иванов on 15.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var currentLight = Color.white
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                trafficLights
                Spacer()
                ColorButton(title: buttonLabel) {
                    buttonLabel = "NEXT"
                    changeLightColor()
                }
            }.padding(16)
        }
    } 
    
    private var trafficLights: some View {
        VStack(spacing: 25) {
            TrafficLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
            TrafficLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
            TrafficLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
        }
    }
    
    private func changeLightColor() {
        
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        default: currentLight = .red
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
