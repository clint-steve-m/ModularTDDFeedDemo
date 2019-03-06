//
//  FeedLoader.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/7/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
