//
//  ContentView.swift
//  Greetings
//
//  Created by 임동현 on 1/3/25.
//

import SwiftUI


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
            LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
                .opacity(0.5)
            
            VStack(alignment: .leading) {
                ForEach( 0..<message.count, id: \.self) { index in
                    let dataItem = message[index]
                    Textview(text: dataItem.text, color: dataItem.color)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
