// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MobileTrigger",
  products: [
    .executable(name: "bitriseTrigger", targets: ["MobileTrigger"])
  ],
  dependencies: [],
  targets: [
    // Targets are the basic building blocks of a package.
    // A target can define a module or a test suite.
    // Targets can depend on other targets in this package,
    // and on products in packages which this package depends on.
    .target(name: "MobileTrigger", dependencies: ["CLI", "Trigger"]),
    .target(name: "CLI", dependencies: []),
    .target(name: "Trigger", dependencies: []),
    .testTarget(name: "TriggerTests", dependencies: ["Trigger"])
  ]
)
