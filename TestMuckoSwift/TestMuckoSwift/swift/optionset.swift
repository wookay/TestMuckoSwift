//
//  optionset.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 21/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import MuckoSwift

// https://developer.apple.com/documentation/swift/optionset
struct ShippingOptions: OptionSet {
    let rawValue: Int
    static let one = ShippingOptions(rawValue: 1)
    static let two = ShippingOptions(rawValue: 2)
    static let three = ShippingOptions(rawValue: 3)
}

class TestOptionSet: WTestCase {

    @objc func test_optionset() {
        let options: ShippingOptions = [.one, .two]
        Assert.True(options.contains(.one))
    }

}
