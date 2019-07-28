//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  ModularFeedTDDCaseStudyTests
//
//  Created by Clint M on 7/28/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import XCTest
import ModularFeedTDDCaseStudy

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
    func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
    }
    
    func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
    }
}
