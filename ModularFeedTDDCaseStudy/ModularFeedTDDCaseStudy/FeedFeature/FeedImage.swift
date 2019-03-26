//
//  FeedImage.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/7/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

// Has no knowledge of API
// keeps module abstract
// implementation details are not leaked
// decouple the Feed Feature module from API implementation details
public struct FeedImage: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let url: URL
    
    public init(id: UUID, description: String?, location: String?, url: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.url = url
    }
}

