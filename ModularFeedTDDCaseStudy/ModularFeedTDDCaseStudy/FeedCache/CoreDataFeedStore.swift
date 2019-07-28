//
//  CoreDataFeedStore.swift
//  ModularFeedTDDCaseStudy
//
//  Created by Clint M on 7/28/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    public init() {}
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
}
