//
//  url.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 22/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import MuckoSwift

class TestURL: WTestCase {
    
    @objc func test_url() {
        let url = URL(url: "http://localhost:8080")
        Assert.equal(url.scheme, "http")
    }

}
