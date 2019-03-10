//
//  FeedItemsMapper.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/12/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

internal final class FeedItemsMapper {
    
    // This item is the internal representation of a FeedItem, but for the api module.
    private struct Root: Decodable {
        let items: [Item]
    }
    
    private struct Item: Decodable {
        let id: UUID
        let description: String?
        let location: String?
        let image: URL
        
        var item: FeedItem {
            return FeedItem(id: id, description: description, location: location, imageURL: image)
        }
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [FeedItem] {
        guard response.statusCode == OK_200 else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        let root = try JSONDecoder().decode(Root.self, from: data)
        return root.items.map { $0.item }
    }
}
