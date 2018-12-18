// TestMuckoSwift Meta.swift

import MuckoSwift

class TestMeta: WTestCase {
    
    @objc func test_isa() {
        Assert.True(isa(1, Int.self))
        Assert.True(isa(test_isa, (() -> Void).self))
    }
    
    @objc func test_typeof() {
        Assert.equal(typeof(1), Int.self)
        Assert.equal(typeof(3.14), Float64.self)
        let n: Int? = nil
        Assert.equal(typeof(n), Optional<Int>.self)
        Assert.equal(typeof(typeof(1)), Int.Type.self)
        Assert.equal(typeof(Int.self), Int.Type.self)
        Assert.equal(typeof([]), [Any].self)
        Assert.equal(typeof(()), Void.self)
        Assert.equal(typeof((0, "")), (Int, String).self)
        Assert.equal(typeof((Int, String).self), (Int, String).Type.self)
        Assert.equal(typeof(Double.nan), Double.self)
        Assert.True(Double.nan.isNaN)
        Assert.equal(typeof(true), Bool.self)
        Assert.equal(typeof(test_isa), (() -> Void).self)
        Assert.equal(typeof(isa), ((Any, Any.Type) -> Bool).self)
        Assert.equal(typeof((() -> Void).self), (() -> Void).Type.self)
        Assert.equal(typeof(NSNull()), NSNull.self)
    }

}
