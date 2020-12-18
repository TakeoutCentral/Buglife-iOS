// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Buglife-iOS",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Buglife-iOS",
            targets: ["Buglife-iOS"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Buglife-iOS",
            dependencies: [],
            path: "Source",
			publicHeadersPath: "include"
        ),
    ]
)
