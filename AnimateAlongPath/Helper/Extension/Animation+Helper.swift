//
//  Animation+Helper.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

extension Animation {

    static let pathAnimationDuration: Double = 1.6
    static let rotationAnimationDuration: Double = 6

    static let pathAnimation = Animation
        .easeInOut(duration: Animation.pathAnimationDuration)

    static let scaleAnimation: Animation = .linear(duration: pathAnimationDuration/2)
        .repeatForever(autoreverses: true)

    static let rotationAnimation: Animation = .linear(
        duration: Self.rotationAnimationDuration)
        .repeatForever(autoreverses: false)
        .delay(pathAnimationDuration)
}
