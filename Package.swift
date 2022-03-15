// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MissingPCFile",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MissingPCFile",
            targets: ["MissingPCFile"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "SwiftJWT", url: "https://github.com/Kitura/Swift-JWT.git", from: "3.6.201")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MissingPCFile",
            dependencies: ["SwiftJWT"]),
        .testTarget(
            name: "MissingPCFileTests",
            dependencies: ["MissingPCFile"]),
    ]
)
