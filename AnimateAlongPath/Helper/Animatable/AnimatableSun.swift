//
//  AnimatableSun.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct AnimatableSun: View, Animatable {

    var progress: Double
    var isAnimated: Bool
    var scale: Double

    let width: Double
    let height: Double
    let phase: Double = -90.0

    let sunWidth: Double = 24

    let scaleFrom: Double = 1

    var animatableData: AnimatablePair<Double, Double> {
        get {
            AnimatableData(scale, progress)
        }
        set {
            scale = newValue.first
            progress = newValue.second
        }
    }

    var body: some View {

        Image(systemName: Constants.ImageName.sun)
            .resizable()
            .scaledToFill()
            .foregroundColor(.sun)
//        Rectangle().fill(Color.sun)
            .frame(width: sunWidth, height: sunWidth)

            .scaleEffect(isAnimated ? scale : scaleFrom)
            .animation(.scaleAnimation, value: isAnimated)

            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .animation(.rotationAnimation, value: isAnimated)

            .offset(computedOffset())
    }

    func computedOffset() -> CGSize {

        let angle = progress * 360.0
        let midWidth = width / 2
        let midHeight = height / 2
        let origin = CGPoint(x: 0, y: midHeight)

        let xValue = origin.x + progress * width
        let radian = (angle+phase).radianValue
        let yValue = origin.y - sin(radian).cgfloatValue * midHeight
        return CGSize(width: xValue - midWidth, height: yValue - midHeight)
    }
}
