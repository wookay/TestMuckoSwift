// TestMuckoSwift some.swift

import MuckoSwift

class TestSome: WTestCase {

    @objc func test_something() {
        Assert.equal(something(1, 2), 1)
        let n: Int? = nil
        Assert.equal(something(n, 2), 2)
    }

}

