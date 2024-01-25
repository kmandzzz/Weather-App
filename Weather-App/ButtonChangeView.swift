//
//  ButtonChangeView.swift
//  Weather-App
//
//  Created by Amanda Oliveira on 09/11/23.
//

import SwiftUI

struct ButtonWeatherView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var isAnimating: Bool = false
    
    var body: some View {
        
        Text(title)
            .disabled(true)
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(10)
            .animation(Animation.spring, value: isAnimating)
    }
}
#Preview {
    ContentView()
}


