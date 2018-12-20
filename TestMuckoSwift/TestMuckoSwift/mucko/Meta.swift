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

        Assert.equal(typeof(true), Bool.self)
        Assert.equal(typeof(test_isa), (() -> Void).self)
        Assert.equal(typeof(isa), ((Any, Any.Type) -> Bool).self)
        Assert.equal(typeof((() -> Void).self), (() -> Void).Type.self)
        Assert.equal(typeof(NSNull()), NSNull.self)

        Assert.equal(Any.Protocol.self, typeof(Any.self))
        Assert.equal(Any.Protocol.Type.self, typeof(Any.Protocol.self))
        Assert.equal(Any.Protocol.Type.Type.self, typeof(Any.Protocol.Type.self))

        Assert.equal(AnyObject.Protocol.self, typeof(AnyObject.self))
        Assert.equal(Void.Type.self, typeof(Void.self))

        Assert.equal(Optional<Any>.Type.self, typeof(Any?.self))
        Assert.equal(TestMeta.Type.self, typeof(TestMeta.self))
        Assert.equal((() -> Void).self, typeof(test_typeof.self))

        Assert.equal(typeof(self), TestMeta.self)
    }

    @objc func test_returntype() {
        func f<R>(_ type: R.Type, _ val: R) -> R {
            return val
        }
        Assert.equal(f(Int.self, 3), 3)
    }

}
