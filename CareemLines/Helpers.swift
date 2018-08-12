//
//  Helpers.swift
//  CareemLines
//
//  Created by Ahmed Abdel Meguid on 8/12/18.
//  Copyright © 2018 Ahmed Abdel Meguid. All rights reserved.
//

import Foundation

extension Date {
    
    func get(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.amSymbol = "am"
        formatter.pmSymbol = "pm"
        return formatter.string(from: self)
    }
}
