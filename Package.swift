// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Buglife",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Buglife",
            targets: ["Buglife"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Buglife",
            dependencies: [],
            path: "Source",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
            ]
        ),
    ]
)
