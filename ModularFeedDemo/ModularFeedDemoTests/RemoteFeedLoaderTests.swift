//
//  RemoteFeedLoaderTests.swift
//  ModularFeedDemoTests
//
//  Created by Clint M on 3/7/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}
