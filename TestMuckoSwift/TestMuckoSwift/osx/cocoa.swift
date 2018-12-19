// TestMuckoSwift osx/cocoa.swift

import MuckoSwift
import Cocoa

class TestCocoa: WTestCase {

    @objc func test_nsbutton() {
        let btn = NSButton(frame: CGRect.zero)
        Assert.True(isnil(btn.target))

        let Button: Any.Type = NSClassFromString("NSButton")!
        Assert.equal(NSButton.self, Button)
        Assert.equal(NSButton.Type.self, typeof(Button))
        Assert.equal(NSButton.Type.Type.self, typeof(NSButton.Type.self))

        let Color: Any.Type = NSClassFromString("NSColor")!
        Assert.True(Color != Button)
    }

}
