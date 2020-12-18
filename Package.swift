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
				.headerSearchPath(""),
				.headerSearchPath("Source"),
     			.headerSearchPath("Source/Additions"),
    			.headerSearchPath("Source/Controllers"),
    			.headerSearchPath("Source/Controllers/AlertView"),
    			.headerSearchPath("Source/Controllers/ImageEditor"),
    			.headerSearchPath("Source/Models"),
    			.headerSearchPath("Source/Protected"),
    			.headerSearchPath("Source/Services"),
    			.headerSearchPath("Source/Services/Logging"),
    			.headerSearchPath("Source/Views"),
    			.headerSearchPath("Source/Views/AnnotationViews"),
    			.headerSearchPath("Source/Views/ContainerWindow"),
				.headerSearchPath("Source/Views/GestureRecognizers"),
				.headerSearchPath("Source/Views/JelloView"),
				.headerSearchPath("Source/Views/Toast"),
    		]
        ),
    ]
)
