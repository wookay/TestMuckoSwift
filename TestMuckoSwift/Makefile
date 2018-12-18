all:
	make ios
	make osx

ios:
	xcodebuild -workspace TestMuckoSwift.xcworkspace/ -scheme TestiOS -destination 'platform=iOS Simulator,name=iPhone 6,OS=11.4' -derivedDataPath ./DerivedData -quiet build
	otool -L ./DerivedData/Build/Products/Debug-iphonesimulator/TestiOS.app/TestiOS

osx:
	xcodebuild -workspace TestMuckoSwift.xcworkspace/ -scheme TestMuckoSwift -destination 'platform=macOS,arch=x86_64' -derivedDataPath ./DerivedData -quiet build
	./DerivedData/Build/Products/Debug/TestMuckoSwift
