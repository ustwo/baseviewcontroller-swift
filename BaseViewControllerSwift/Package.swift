// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "BaseViewControllerSwift",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "BaseViewControllerSwift",
            targets: ["BaseViewControllerSwift"]),
    ],
    targets: [
        .target(
            name: "BaseViewControllerSwift",
            dependencies: []),
        .testTarget(
            name: "BaseViewControllerSwiftTests",
            dependencies: ["BaseViewControllerSwift"]),
    ]
)
