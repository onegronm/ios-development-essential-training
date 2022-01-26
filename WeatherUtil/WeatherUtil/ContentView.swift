//
//  ContentView.swift
//  WeatherUtil
//
//  Created by Omar Negron Montero on 1/26/22.
//

import SwiftUI

// Working with data models
struct ContentView: View {
    var body: some View {
        NavigationView
        {
            // create a list of items
            // with data model we created
            // use the id in the object
            List(DataModel.data, id: \.self)
            {
                // 'object' takes data in the array
                object in
                HStack {
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high) F")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day,
                                   destination: DetailView(data: object))
                }
            }
            
            .navigationTitle("New York City")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
