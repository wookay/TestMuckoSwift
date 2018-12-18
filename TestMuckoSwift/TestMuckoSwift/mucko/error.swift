// TestMuckoSwift error.swift

import MuckoSwift

class TestError: WTestCase {
    
    func throw_bounds_error() throws {
        throw BoundsError(1, 2)
    }
    
    @objc func test_exception() {
        var cnt = 0
        do {
            try throw_bounds_error()
        } catch _ as BoundsError {
            cnt += 1
        } catch {
        }
        Assert.equal(cnt, 1)
    }
}
