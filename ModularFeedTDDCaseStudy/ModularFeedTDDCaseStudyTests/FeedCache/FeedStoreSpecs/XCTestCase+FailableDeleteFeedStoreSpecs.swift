//
//  XCTestCase+FailableDeleteFeedStoreSpecs.swift
//  ModularFeedTDDCaseStudyTests
//
//  Created by Clint M on 7/28/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import XCTest
import ModularFeedTDDCaseStudy

extension FailableDeleteFeedStoreSpecs where Self: XCTestCase {
    func assertThatDeleteDeliversErrorOnDeletionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let deletionError = deleteCache(from: sut)
        
        XCTAssertNotNil(deletionError, "Expected cache deletion to fail", file: file, line: line)
    }
    
    func assertThatDeleteHasNoSideEffectsOnDeletionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        deleteCache(from: sut)
        
        expect(sut, toRetrieve: .empty, file: file, line: line)
    }
}
