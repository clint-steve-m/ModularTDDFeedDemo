//
//  ValidateFeedCacheUseCaseTests.swift
//  ModularFeedTDDCaseStudyTests
//
//  Created by Clint M on 4/2/19.
//  Copyright © 2019 Clint M. All rights reserved.
//

import XCTest
import ModularFeedTDDCaseStudy

class ValidateFeedCacheUseCasesTests: XCTestCase {
    
    // not duplicating code, but testing in a different context
    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        
        XCTAssertEqual(store.receivedMessages, [])
    }
    
    // MARK: - Helpers
    
    private func makeSUT(currentDate: @escaping () -> Date = Date.init, file: StaticString = #file, line: UInt = #line) -> (sut: LocalFeedLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedLoader(store: store, currentDate: currentDate)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }
}
