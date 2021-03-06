// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "LiteSupport",
  products: [
    .library(
      name: "LiteSupport",
      targets: ["LiteSupport"]),
  ],
  dependencies: [
    .package(url: "https://github.com/onevcat/Rainbow.git", from: "3.0.0"),
    .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.1.0"),
  ],
  targets: [
    .target(
      name: "LiteSupport",
      dependencies: ["Rainbow", "ShellOut"]),

    // This needs to be named `lite-test` instead of `lite` because consumers
    // of `lite` should use the target name `lite`.
    .target(
      name: "lite-test",
      dependencies: ["LiteSupport"]),
    .testTarget(
      name: "LiteTests",
      dependencies: ["LiteSupport"]),
  ]
)
