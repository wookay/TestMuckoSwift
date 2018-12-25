// TestMuckoSwift strings.swift

import MuckoSwift

class TestString: WTestCase {

    @objc func test_strip() {
        Assert.equal(strip("a"), "a")
        Assert.equal(strip(" a "), "a")
    }

    @objc func test_split() {
        Assert.equal(split("b,c", ","), ["b", "c"])
        Assert.equal(split("a\nb"), ["a", "b"])
        Assert.equal(split("a\n b "), ["a", "b"])
        Assert.equal(split("a\n b ", keepempty: true), ["a", "", "b", ""])
        Assert.equal(split("a\n b ", " "), ["a\n", "b", ""])
        Assert.equal(split("a\n b ", " ", keepempty: false), ["a\n", "b"])
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
        Assert.equal(string(), "")
        Assert.equal(string(1,2,3,true), "123true")
        let n: Int? = nil
        Assert.equal(string(n), "nil")
        Assert.equal(string(n, n), "nilnil")
        Assert.equal(string(n as Any, 5, "a"), "nil5a")
    }

    @objc func test_String() {
        Assert.equal(String(1), "1")
        let sel = #selector(test_String)
        Assert.equal(String(selector: sel), "test_String")
        let sel2 = Selector(("help"))
        Assert.equal(String(selector: sel2), "help")
    }

    @objc func test_isempty() {
        Assert.True(isempty(""))
    }

}
