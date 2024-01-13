//
//  DateFormatter+Helper.swift
//  AnimateAlongPath
//
//  Created by bnulo on 1/13/24.
//

import Foundation

extension DateFormatter {

    static let hmmDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "h:mm a"
            dateFormatter.amSymbol = "am"
            dateFormatter.pmSymbol = "pm"

            return dateFormatter
    }()
}
