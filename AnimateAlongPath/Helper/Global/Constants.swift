//
//  Constants.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

enum Constants {

    enum ImageName {
        static let sun = "sun.max.fill"
        static let sunrise = "sunrise"
        static let sunset = "sunset"
    }

    enum ClipShape {
        static let buttonClipShape = RoundedRectangle(cornerRadius: 24,
                                                      style: .continuous)
    }

    enum Title {

        static let sunrise = "Sunrise"
        static let sunset = "Sunset"
        static let animateButton = "Animate!"
    }
}
