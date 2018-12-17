// TestMuckoSwift array.swift

import MuckoSwift

class TestArray: WTestCase {

    @objc func test_join() {
        Assert.equal(join([1,2,3]), "123")
        Assert.equal(join(["1",2,3]), "123")
        Assert.equal(join([1,2,3], ","), "1,2,3")
    }

}
