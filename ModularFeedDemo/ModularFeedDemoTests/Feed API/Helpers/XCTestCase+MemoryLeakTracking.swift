//
//  XCTestCase+MemoryLeakTracking.swift
//  ModularFeedDemoTests
//
//  Created by Clint M on 3/13/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
