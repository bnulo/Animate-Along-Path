//
//  ContentView.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import SwiftUI

struct ContentView: View {

    @State private var progress: Double = 0.0
    @State private var isAnimated: Bool = false

    var body: some View {

        VStack {
            cardView
            animateButton
        }
        .padding()
    }

    // MARK: - Child Views

    private var cardView: some View {
        CardView(backgroundColor: Color.cardBackground) {
            VStack {
                sunWaveSection
                daytimeEventViewsSection
            }
        }
    }

    // MARK: - Sun Wave Section

    private var sunWaveSection: some View {
        ZStack {
            waveDashStroked
            waveLineStroked
            sun
        }
//        .border(Color.red)
        .padding()
    }

    private var waveDashStroked: some View {
        Wave()
            .stroke(Color.cardAccent,
                    style: StrokeStyle(
                        lineWidth: ViewConstants.sunWaveStrokeLineWidth,
                        lineCap: .round,
                        lineJoin: .round,
                        dash: [ViewConstants.sunWaveStroke]))
            .frame(height: ViewConstants.sunWaveHeight)
    }

    private var waveLineStroked: some View {
        Wave()
            .trim(from: 0, to: progress)
            .stroke(Color.cardAccent,
                    style: StrokeStyle(
                        lineWidth: ViewConstants.sunWaveStroke,
                        lineCap: .round))
            .frame(height: ViewConstants.sunWaveHeight)
                        .animation(Animation.pathAnimation, value: progress)
    }

    private var sun: some View {

        AnimatableSun(progress: progress,
                      isAnimated: isAnimated,
                      scale: ViewConstants.sunScale,
                      width: ViewConstants.sunWaveWidth,
                      height: ViewConstants.sunWaveHeight)
            .foregroundColor(.sun)
            .animation(.pathAnimation, value: progress)
    }

    // MARK: - Daytime Event Views Section

    private var daytimeEventViewsSection: some View {
        HStack {
            DaytimeEventView(daytimeEvent: .sunrise(.sunriseTestDate))
            Spacer()
            DaytimeEventView(daytimeEvent: .sunset(.sunsetTestDate))
        }
        .fontDesign(.rounded)
    }

    // MARK: - Animate Button

    private var animateButton: some View {
        Button {

            isAnimated.toggle()
            progress = ViewConstants.testProgress

        } label: {
            Text(Constants.Title.animateButton)
        }
        .buttonStyle(RoundedShadowedButton())
    }

    // MARK: - View Constants

    private struct ViewConstants {

        static let sunScale: Double = 1.6
        static let sunWaveWidth: Double = 300
        static let sunWaveHeight: Double = 50
        static let sunWaveStroke: Double = 4
        static let sunWaveStrokeLineWidth: Double = 1
        static let testProgress: Double = 0.7
    }
}
