//
//  MainThreadPrimitiveHotObservable.swift
//  Tests
//
//  Created by Krunoslav Zaher on 10/14/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

import RxSwift
import XCTest
import Dispatch

final class MainThreadPrimitiveHotObservable<Element: Equatable> : PrimitiveHotObservable<Element> {
    override func subscribe<O : ObserverType>(_ observer: O) -> Disposable where O.Element == Element {
        XCTAssertTrue(DispatchQueue.isMain)
        return super.subscribe(observer)
    }
}
