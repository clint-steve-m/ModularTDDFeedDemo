//
//  FeedCachePolicy.swift
//  ModularFeedTDDCaseStudy
//
//  Created by Clint M on 4/4/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

// never can have an instance of a 'FeedCachePolicy'
// because it needs no identity and it holds no state
internal final class FeedCachePolicy {
    private init() {}
    
    private static let calendar = Calendar(identifier: .gregorian)
    
    private static var maxCacheAgeInDays: Int {
        return 7
    }
    
    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
