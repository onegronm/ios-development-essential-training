//
//  DataModel.swift
//  WeatherUtil
//
//  Created by Omar Negron Montero on 1/26/22.
//

import UIKit
import SwiftUI

struct WeatherData : Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class DataModel: NSObject {
    static let data: [WeatherData] =
    [
        WeatherData(id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill", color: Color.orange),
        WeatherData(id: 2, day: "Tuesday", high: 75, low: 62, icon: "sun.max.fill", color: Color.blue),
        WeatherData(id: 3, day: "Wednesday", high: 60, low: 50, icon: "cloud.drizzle.fill", color: Color.green)
    ]
}
