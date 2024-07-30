// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PinCodeEnter",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PinCodeEnter",
            targets: ["PinCodeEnter"]),
        .library(
            name: "PinCodeScreen",
            targets: ["PinCodeScreen"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PinCodeEnter"),
        .target(
            name: "PinCodeScreen"),
        .testTarget(
            name: "PinCodeEnterTests",
            dependencies: ["PinCodeEnter"],
            plugins: [.plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")]
        ),
    ]
)
