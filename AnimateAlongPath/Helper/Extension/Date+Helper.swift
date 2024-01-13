//
//  Date+Helper.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import Foundation

extension Date {

    static var sunriseTestDate: Date {
        Date.getTodayDateWith(hour: 8, minute: 10)
    }

    static var sunsetTestDate: Date {
        Date.getTodayDateWith(hour: 16, minute: 2)
    }

    static func getTodayDateWith(hour: Int,
                                 minute: Int,
                                 second: Int = 0) -> Date {

        let calendar = Calendar.current
        let currentDateComponents = calendar
            .dateComponents([.year, .month, .day], from: Date())

        return calendar.date(bySettingHour: hour,
                             minute: minute,
                             second: second,
                             of: calendar.date(from: currentDateComponents)!
        ) ?? Date()
    }
}
