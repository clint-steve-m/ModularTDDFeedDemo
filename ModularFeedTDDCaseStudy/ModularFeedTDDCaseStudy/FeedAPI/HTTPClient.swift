//
//  HTTPClient.swift
//  ModularFeedDemo
//
//  Created by Clint M on 3/12/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropiate threads, if needed.
    func get(from url: URL, completion: @ escaping (HTTPClientResult) -> Void)
}
