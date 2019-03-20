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
        let items: [RemoteFeedItem]
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
    }
}
