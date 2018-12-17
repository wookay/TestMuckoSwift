// TestMuckoSwift strings.swift

import MuckoSwift

class TestString: WTestCase {

    @objc func test_strip() {
        Assert.equal(strip("a"), "a")
        Assert.equal(strip(" a "), "a")
    }

    @objc func test_split() {
        Assert.equal(split("b,c", ","), ["b", "c"])
    }

    @objc func test_repr() {
        Assert.equal(repr(["a"]), "[\"a\"]")
    }

}
