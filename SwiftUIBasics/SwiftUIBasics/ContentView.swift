//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Omar Negron Montero on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    
    // Binding
    @State var name = ""
    
    var body: some View {
        VStack {
            
            // $ denotes a bound or state variable
            TextField("Name", text: $name)
            Text("Hello \(name)")
            
            Text("Weather")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .padding()
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Monday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                .padding()
            }
            .padding(1)
            HStack {
                Image(systemName: "cloud.drizzle.fill")
                    .foregroundColor(Color.blue)
                Text("Tuesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                .padding()
            }
            .padding(1)
            HStack {
                Image(systemName: "cloud.bolt.fill")
                    .foregroundColor(Color.gray)
                Text("Wednesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                .padding()
            }
            .padding(1)
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Thursday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                .padding()
            }
            .padding(1)
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Friday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                .padding()
            }
            .padding(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
