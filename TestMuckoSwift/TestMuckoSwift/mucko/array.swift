// TestMuckoSwift array.swift

import MuckoSwift

class TestArray: WTestCase {

    @objc func test_join() {
        Assert.equal(join([1,2,3]), "123")
        Assert.equal(join(["1",2,3]), "123")
        Assert.equal(join([1,2,3], ","), "1,2,3")
    }

    @objc func test_length() {
        Assert.equal(length([1,2,3]), 3)
    }

    @objc func test_isempty() {
        Assert.True(isempty([]))
        Assert.True(isempty(()))
    }

    typealias Vector = Array
    @objc func test_push() {
        var a = Vector<Int>()
        a.pushI(1)
        Assert.equal(a, [1])
    }

    @objc func test_append() {
        var a = Vector<Int>()
        a.appendI([1])
        Assert.equal(a, [1])
    }

}

