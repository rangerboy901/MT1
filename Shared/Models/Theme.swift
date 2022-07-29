//
//  Theme.swift
//  MT (iOS)
//
//  Created by Joseph Wil;liam DeWeese on 7/29/22.
//

import Foundation
import SwiftUI

enum Theme: String {
    //JWD ASSET CATALOGUE FOR COLOR THEMES AND CHOICES
case bubblegum
case buttercup
case indigo
case lavender
case magenta
case navy
case orange
case oxblood
case periwinkle
case poppy
case purple
case seafoam
case sky
case tan
case teal
case yellow

    //JWD:  accentColor that returns .black or .white depending on the value of self.
    var accentColor: Color {
            switch self {
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
            }
        }
    var mainColor: Color {
        Color(rawValue)
    }
    }
