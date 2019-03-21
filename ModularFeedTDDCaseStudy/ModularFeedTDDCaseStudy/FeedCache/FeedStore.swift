//
//  FeedStore.swift
//  ModularFeedTDDCaseStudy
//
//  Created by Clint M on 3/22/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    func retrieve()
}
