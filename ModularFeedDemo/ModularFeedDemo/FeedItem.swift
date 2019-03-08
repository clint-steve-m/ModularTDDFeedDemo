//
//  FeedItem.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/7/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
    
}
