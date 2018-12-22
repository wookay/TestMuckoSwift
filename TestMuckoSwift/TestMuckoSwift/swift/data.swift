//
//  data.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 22/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import MuckoSwift

class TestData: WTestCase {

    @objc func test_String() {
        let data: Data? = nil
        Assert.equal(String(data: data), "")
        Assert.equal(String(data: Data()), "")
    }
    
    @objc func test_Data() {
        Assert.equal(Data(string: ""), Data())
        Assert.equal(length(Data(string: "abc")), 3)
    }

}
