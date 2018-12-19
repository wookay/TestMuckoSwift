// TestMuckoSwift Core.swift

import MuckoSwift

class TestCore: WTestCase {

    struct S {
        var p: Int
    }

    class K {
        var p: Int
        init(p: Int) {
            self.p = p
        }
    }

    @objc func test_getfield() {
        let s = S(p: 1)
        Assert.equal(getfield(s, "p") as? Int, 1)

        let k = K(p: 2)
        Assert.equal(getfield(k, "p") as? Int, 2)
    }

}
