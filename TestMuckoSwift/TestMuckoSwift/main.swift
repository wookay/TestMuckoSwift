//
//  main.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import MuckoSwift

let tests = [
    TestVersionNumber.self,
    TestString.self,
    TestArray.self,
]
UnitTest.run(tests)
