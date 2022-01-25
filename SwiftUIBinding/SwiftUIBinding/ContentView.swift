//
//  ContentView.swift
//  SwiftUIBinding
//
//  Created by Omar Negron Montero on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var red = 1.0
    @State var green = 1.0
    @State var blue = 1.0
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.light)
                .padding()
            
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
            
            ColorSlider(value: $red, color: Color.red)
            ColorSlider(value: $green, color: Color.green)
            ColorSlider(value: $blue, color: Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
