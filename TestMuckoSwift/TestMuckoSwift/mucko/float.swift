// TestMuckoSwift float.swift

import MuckoSwift

class TestFloat: WTestCase {

    @objc func test_round() {
        Assert.equal(round(Int.self, 3.14), 3)
        Assert.equal(round(Int.self, 3), 3)

        Assert.equal(round(Double.pi), 3.0)
        Assert.equal(round(Double.pi, digits: 2), 3.14)
    }

    @objc func test_nan() {
        Assert.True(Double.nan.isNaN)
    }

}

