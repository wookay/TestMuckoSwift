// TestMuckoSwift float.swift

import MuckoSwift

class TestFloat: WTestCase {

    @objc func test_round() {
        Assert.equal(round(Int.self, 3.14), 3)
        Assert.equal(round(Int.self, 3), 3)
    }

}

