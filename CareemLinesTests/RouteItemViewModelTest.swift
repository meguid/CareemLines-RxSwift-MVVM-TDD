//
//  RouteItemViewModelTest.swift
//  CareemLinesTests
//
//  Created by Ahmed Abdel Meguid on 8/12/18.
//  Copyright © 2018 Ahmed Abdel Meguid. All rights reserved.
//

import XCTest
@testable import CareemLines

class RouteItemViewModelTest: XCTestCase {
    
    var routeItemViewModel: RouteItemViewModel!

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        routeItemViewModel = nil
    }
    
    func testRouteItemBasicInit() {
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: Date(),
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33))
        XCTAssertNotNil(routeItemViewModel)
    }
    
    func testRouteItemDoublePriceUp() {
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: Date(),
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.5))
        XCTAssertEqual(routeItemViewModel.price, 34)
    }
    
    func testRouteItemDoublePriceDown() {
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: Date(),
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.4))
        XCTAssertEqual(routeItemViewModel.price, 33)
    }
    
    func testRouteItemDate() {
        let date = Date()
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: date,
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.4))
        XCTAssertEqual(routeItemViewModel.dateString, date.get(format: "EEEE, h:mm a"))
    }
    
    func testRouteItemDatePast() {
        let date = Date().addingTimeInterval(-1000)
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: date,
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.4))
        XCTAssertEqual(routeItemViewModel.dateString, date.get(format: "EEEE, h:mm a"))
    }
    
    func testRouteItemDateFuture() {
        let date = Date().addingTimeInterval(1000)
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: date,
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.4))
        XCTAssertEqual(routeItemViewModel.dateString, date.get(format: "EEEE, h:mm a"))
    }
    
    func testRouteItemStops() {
        routeItemViewModel = RouteItemViewModel(routeItem: RouteItem(date: Date(),
                                                                     startStop: "Dokki",
                                                                     endStop: "Maadi",
                                                                     price: 33.4))
        XCTAssertEqual(routeItemViewModel.startStop, "Dokki")
        XCTAssertEqual(routeItemViewModel.endStop, "Maadi")
    }
}
