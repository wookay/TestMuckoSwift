// TestMuckoSwift parse.swift

import MuckoSwift

class TestParse: WTestCase {

    @objc func test_parse() {
        Assert.equal(parse(Int.self, "123"), 123)
        Assert.equal(parse(Float32.self, "3.14"), 3.14)
        Assert.equal(parse(Float64.self, "3.14"), 3.14)
        Assert.equal(parse(Double.self, "3.14"), 3.14)
    }

    @objc func test_nan() {
        Assert.True(Double.nan.isNaN)
    }

}

