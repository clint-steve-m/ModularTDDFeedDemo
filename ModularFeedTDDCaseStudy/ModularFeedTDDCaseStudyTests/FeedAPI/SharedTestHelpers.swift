//
//  SharedTestHelpers.swift
//  ModularFeedTDDCaseStudyTests
//
//  Created by Clint M on 4/2/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
