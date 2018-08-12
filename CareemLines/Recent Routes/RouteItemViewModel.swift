//
//  RoutesItemViewModel.swift
//  CareemLines
//
//  Created by Ahmed Abdel Meguid on 8/12/18.
//  Copyright © 2018 Ahmed Abdel Meguid. All rights reserved.
//

import Foundation

struct RouteItemViewModel {
    
    let dateString: String
    let startStop: String
    let endStop: String
    let price: Int
    
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, h:mm a"
        formatter.doesRelativeDateFormatting = true
        return formatter
    }()
    
    init(routeItem: RouteItem) {
        self.startStop = routeItem.startStop
        self.endStop = routeItem.endStop
        self.price = Int(routeItem.price)
        self.dateString = RouteItemViewModel.dateFormatter.string(from: routeItem.date)
    }
}
