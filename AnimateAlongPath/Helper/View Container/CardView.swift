//
//  CardView.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct CardView<Content: View>: View {

    let content: Content
    let backgroundColor: Color

    init(backgroundColor: Color, @ViewBuilder content: () -> Content) {
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    var body: some View {
        content
            .padding()
            .background(Constants.ClipShape.buttonClipShape
                .fill(backgroundColor))
    }
}
