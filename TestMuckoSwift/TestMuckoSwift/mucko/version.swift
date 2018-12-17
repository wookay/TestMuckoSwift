// TestMuckoSwift version.swift

import MuckoSwift

class TestVersionNumber: WTestCase {

    @objc func test_version() {
        let v = VersionNumber("0.1")
        Assert.equal(string(v), "v\"0.1.0\"")
    }

}
