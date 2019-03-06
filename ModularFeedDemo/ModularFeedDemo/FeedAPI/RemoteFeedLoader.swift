//
//  RemoteFeedLoader.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/7/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    public func load() {
        client.get(from: url)
    }
}
