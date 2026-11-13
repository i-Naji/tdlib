import Cocoa
import FlutterMacOS
import Testing

// If your plugin has been explicitly set to "type: .dynamic" in the Package.swift,
// you will need to add your plugin as a dependency of RunnerTests within Xcode.

@testable import tdlib

// This demonstrates a simple unit test of the Swift portion of this plugin's implementation.
//
// See https://developer.apple.com/xcode/swift-testing/ for more information about using
// Swift Testing.

struct RunnerTests {

  @Test func getPlatformVersionSucceeds() throws {
    let plugin = TdlibPlugin()

    let result = try plugin.getPlatformVersion()
    #expect(result == "macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
  }

}
