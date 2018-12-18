// TestMuckoSwift Meta.swift

import MuckoSwift

class TestMeta: WTestCase {

    @objc func test_isa() {
        Assert.True(isa(1, Int.self))
    }
    
    @objc func test_typeof() {
        Assert.True(typeof(1) == Int.self)
        Assert.equal(typeof(1), Int.self)
        let n: Int? = nil
        Assert.equal(typeof(n), Optional<Int>.self)
        Assert.equal(typeof(typeof(1)), Int.Type.self)
        Assert.equal(typeof(Int.self), Int.Type.self)
    }

}
