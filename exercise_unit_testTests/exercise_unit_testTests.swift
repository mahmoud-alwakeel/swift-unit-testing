//
//  exercise_unit_testTests.swift
//  exercise_unit_testTests
//
//  Created by Mahmoud Alwakeel on 12/10/2023.
//

import XCTest
@testable import exercise_unit_test

final class exercise_unit_testTests: XCTestCase {
    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [
            CheckoutItem(name: "Fish and Chips", price: 625),
            CheckoutItem(name: "soda", price: 850),
            CheckoutItem(name: "meat", price: 325),
            CheckoutItem(name: "vegetables", price: 175),
        ]
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 2370)
    }
}
