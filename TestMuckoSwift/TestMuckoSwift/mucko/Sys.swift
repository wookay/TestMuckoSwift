// TestMuckoSwift strings.swift

import MuckoSwift

class TestSys: WTestCase {

    @objc func test_isosx() {
        Assert.True(Sys.isosx() || Sys.isios())
    }

}
