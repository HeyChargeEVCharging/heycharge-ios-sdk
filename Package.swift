// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "heycharge_ios_sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "heycharge_ios_sdk",
            targets: ["heycharge_ios_sdk","ios-sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/groue/GRDB.swift.git", exact: "6.29.3"),
        .package(url: "https://github.com/apple/swift-protobuf.git", exact: "1.25.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.10.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "heycharge_ios_sdk",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]),
        .binaryTarget(
            name: "ios-sdk",
            path: "artifacts/ios-sdk.xcframework"
        ),
        .testTarget(
            name: "heycharge_ios_sdkTests",
            dependencies: ["heycharge_ios_sdk"]),
    ]
)
