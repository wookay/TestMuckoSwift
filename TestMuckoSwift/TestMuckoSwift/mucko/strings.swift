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
        let n: Int? = nil
        Assert.equal(repr(n), "nil")
        Assert.equal(repr([n, n]), "[nil, nil]")
        Assert.equal(repr((n, n)), "(nil, nil)")
        Assert.equal(repr((n, 1)), "(nil, 1)")
    }

    @objc func test_string() {
        Assert.equal(string(1,2,3,true), "123true")
        let n: Int? = nil
        Assert.equal(string(n), "nil")
        Assert.equal(string(n, n), "nilnil")
        Assert.equal(string(n as Any, 1, "a"), "nil1a")
    }

    @objc func test_isempty() {
        Assert.True(isempty(""))
    }

}
