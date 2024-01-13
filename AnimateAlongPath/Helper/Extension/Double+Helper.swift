//
//  Double+Helper.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import Foundation

extension Double {

    var radianValue: Double { self * .pi / 180 }
    var degreeValue: Double { self * 180 / .pi }
    var cgfloatValue: CGFloat { CGFloat(self) }
}
