//
//  Textview.swift
//  Greetings
//
//  Created by 임동현 on 1/3/25.
//

import SwiftUI

struct Textview: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text( text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .padding()
            .background(color.opacity(0.4))
            .cornerRadius(10)
            .shadow(color: color.opacity(0.5) , radius: 5 , x: 0 , y: 3)
    }
}

#Preview {
    Textview(text:"hello there!", color: .green)
    Textview(text:"hello there!", color: .blue)
    Textview(text:"hello there!", color: .purple)

}
