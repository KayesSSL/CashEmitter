// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CashEmitter",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CashEmitter",
            targets: ["CashEmitter"]),
    ],
    targets: [
            // Targets are the basic building blocks of a package, defining a module or a test suite.
            // Targets can depend on other targets in this package and products from dependencies.
            .binaryTarget(
                name: "CashEmitter",
                path: "./Sources/CashEmitter/App.xcframework"
            ),
            .binaryTarget(
                name: "Flutter",
                path: "./Sources/CashEmitter/Flutter.xcframework"
            ),
        ]
)
