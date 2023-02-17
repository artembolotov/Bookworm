//
//  Extensions.swift
//  Bookworm
//
//  Created by artembolotov on 18.02.2023.
//

import Foundation

extension Date {
    func prettyFormatted() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: self)
    }
}
