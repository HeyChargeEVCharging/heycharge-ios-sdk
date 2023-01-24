// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "heycharge_ios_sdk",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "heycharge_ios_sdk",
            targets: ["heycharge_ios_sdk","ios_sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "heycharge_ios_sdk",
            dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf")]),
        .binaryTarget(name: "ios_sdk",
                             path: "artifacts/ios_sdk.xcframework"),
        .testTarget(
            name: "heycharge_ios_sdkTests",
            dependencies: ["heycharge_ios_sdk"]),
    ]
)
