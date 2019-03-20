//
//  LocalFeedItem.swift
//  ModularFeedTDDCaseStudy
//
//  Created by Clint M on 3/22/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

// Data Transfer Object - DTO
public struct LocalFeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
    
    public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}
