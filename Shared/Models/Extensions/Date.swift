//
//  Date.swift
//  MT (iOS)
//
//  Created by Joseph Wil;liam DeWeese on 7/30/22.
//

import Foundation


extension Date {
    
    func asFormattedString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: self)
    }
    
}
