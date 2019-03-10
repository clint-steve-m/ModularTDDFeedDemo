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
    func get(from url: URL, completion: @ escaping (HTTPClientResult) -> Void)
}
