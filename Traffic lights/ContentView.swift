//
//  ContentView.swift
//  Traffic lights
//
//  Created by Михаил Иванов on 15.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonLabel = "Start"
    @State var currentLight = Color.red
    
    @State var redLight = TrafficLightView(color: .red, opacity: 0.5)
    @State var yellowLight = TrafficLightView(color: .yellow, opacity: 0.5)
    @State var greenLight = TrafficLightView(color: .green, opacity: 0.5)
    
    var body: some View {
        
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                redLight
                    .padding(.top)
                yellowLight
                    .padding()
                greenLight
                    .padding(.bottom)
                
                Spacer()
                
                Button(action: {
                    buttonLabel = "Next"
                    print(currentLight)

                    switch currentLight {
                    case .red:
                        greenLight.opacity = 0.5
                        redLight.opacity = 1.0
                        currentLight = .yellow
                    case .yellow:
                        redLight.opacity = 0.5
                        yellowLight.opacity = 1.0
                        currentLight = .green
                    default:
                        yellowLight.opacity = 0.5
                        greenLight.opacity = 1.0
                        currentLight = .red
                    }
                }, label: {
                    Text(buttonLabel)
                })
                    .frame(width: 120.0, height: 50.0)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
