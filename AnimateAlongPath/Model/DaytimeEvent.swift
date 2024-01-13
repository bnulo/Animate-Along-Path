//
//  DaytimeEvent.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import Foundation

enum DaytimeEvent: Equatable {

    case sunrise(Date)
    case sunset(Date)

    var title: String {
        switch self {
        case .sunrise:
            return Constants.Title.sunrise
        case .sunset:
            return Constants.Title.sunset
        }
    }

    var imageName: String {
        switch self {
        case .sunrise:
            return Constants.ImageName.sunrise
        case .sunset:
            return Constants.ImageName.sunset
        }
    }

    var timeString: String {
        switch self {
        case .sunrise(let date), .sunset(let date):
            return DateFormatter.hmmDateFormatter.string(from: date)
        }
    }
}
