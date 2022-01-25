//
//  ColorSlider.swift
//  SwiftUIBinding
//
//  Created by Omar Negron Montero on 1/25/22.
//

import SwiftUI

struct ColorSlider: View {
    
    // pass in bound value
    // parent object contains a value that the child needs to know about
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            ColorSwatch(color: color)
            Slider(value: $value, in: 0...1, step: 0.1)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    // create a static var to supply the preview
    @State static var value = 1.0
    static var previews: some View {
        ColorSlider(value: $value, color: .blue)
    }
}
