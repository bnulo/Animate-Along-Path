//
//  Wave.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct Wave: Shape {

    let phase: Double = -90.0

    func path(in rect: CGRect) -> Path {

        let path = UIBezierPath()

        let width = rect.width.doubleValue
        let height = rect.height.doubleValue
        let midHeight = height / 2

        let origin = CGPoint(x: 0, y: midHeight)

        // start at the left-bottom
        path.move(to: CGPoint(x: 0, y: height))

        let strideValue = 1.0
        let startAngle = strideValue
        let endAngle = 360.0

        for angle in stride(from: startAngle,
                            through: endAngle,
                            by: strideValue) {
            let xValue = origin.x + (angle/360.0).cgfloatValue * width
            let radian = (angle+phase).radianValue
            let yValue = origin.y - sin(radian).cgfloatValue * midHeight

            path.addLine(to: CGPoint(x: xValue, y: yValue))
        }

        return Path(path.cgPath)
    }
}
