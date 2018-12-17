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
        Assert.equal(repr(3.14), "3.14")
        Assert.equal(repr(-3.14), "-3.14")
        Assert.equal(repr("a"), "\"a\"")
        Assert.equal(repr(["a"]), "[\"a\"]")
    }

    @objc func test_string() {
        Assert.equal(string(1,2,3,true), "123true")
    }

}
