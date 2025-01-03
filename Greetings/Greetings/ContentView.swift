//
//  ContentView.swift
//  Greetings
//
//  Created by 임동현 on 1/3/25.
//

import SwiftUI


struct ContentView: View {
    let message: [DataItemModel] = [
        .init(text: "hello there!", color: .green),
        .init(text: "welcome to swiftui", color: .gray),
        .init(text: "are u ready", color: .yellow),
        .init(text: "Booooom", color: .red),
        .init(text: "Just do it~", color: .purple)
    ]

    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.cyan , Color.purple]), startPoint: .topLeading , endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
                .opacity(0.5)
            VStack(alignment: .leading) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                
                Textview(text: message[0].text, color: message[0].color)
                Textview(text: message[1].text, color: message[1].color)
                Textview(text: message[2].text, color: message[2].color)
                Textview(text: message[3].text, color: message[3].color)
                Textview(text: message[4].text, color: message[4].color)


            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
