//
//  RoundedShadowedButton.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct RoundedShadowedButton: ButtonStyle {

    var foregroundColor: Color = .cardAccent
    let backgroundColor: Color = .cardBackground

    func makeBody(configuration: Configuration) -> some View {

        configuration.label
            .font(.title2)
            .fontDesign(.rounded)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .foregroundColor(foregroundColor)
            .padding()
            .background(Constants.ClipShape.buttonClipShape
                .fill(backgroundColor))
            .shadow(color: Color.cardBackground
                .opacity(0.5), radius: 20, x: 0, y: 10)
    }
}
