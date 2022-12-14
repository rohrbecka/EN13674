// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EN13674",
    platforms: [.macOS(.v12), .iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "EN13674",
            targets: ["EN13674"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/realm/SwiftLint", revision: "a876e860ee0e166a05428f430888de5d798c0f8d"),
        .package(url: "https://github.com/rohrbecka/ProfilePath", revision: "2e0ea6a9e4a84cfc51cce0d31bb7b01bda885f2a")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "EN13674",
            dependencies: ["ProfilePath"],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]),
        .testTarget(
            name: "EN13674Tests",
            dependencies: ["EN13674"])
    ]
)
