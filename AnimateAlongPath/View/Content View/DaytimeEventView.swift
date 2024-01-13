//
//  DaytimeEventView.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct DaytimeEventView: View {

    let daytimeEvent: DaytimeEvent

    var body: some View {
        VStack {
            switch daytimeEvent {
            case .sunrise:
                HStack {
                    image
                    infoView
                }
            case .sunset:
                HStack {
                    infoView
                    image
                }
            }
        }
    }

    // MARK: - Child View

    private var infoView: some View {
        VStack {
            dayEventTitle
            dayEventTimeString
        }
    }

    private var dayEventTitle: some View {
        Text(daytimeEvent.title)
            .foregroundColor(.appGray)
            .font(.callout)
    }

    private var dayEventTimeString: some View {
        Text(daytimeEvent.timeString)
            .foregroundColor(.appText)
            .font(.body.bold())
    }

    private var image: some View {
        Image(systemName: daytimeEvent.imageName)
            .foregroundColor(.cardAccent)
            .font(.title2.bold())
    }
}
