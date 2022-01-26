//
//  DetailView.swift
//  WeatherUtil
//
//  Created by Omar Negron Montero on 1/26/22.
//

import SwiftUI

struct DetailView: View {
    var data: WeatherData
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack {
            Text(data.day)
            
            Button(action: {
                isPopoverShowing = true
            }){
                Text("Show Popover")
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing)
            {
                Text("H \(data.high)ºF L \(data.low)ºF")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
