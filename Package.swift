// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UltraDrawerView",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "UltraDrawerView",
            targets: ["UltraDrawerView", "pop"]),
    ],
    targets: [
        .binaryTarget(
            name: "pop",
            path: "pop.xcframework"
        ),
        .target(
            name: "UltraDrawerViewObjCUtils",
            dependencies: [],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit")
            ]),
        .target(
            name: "UltraDrawerView",
            dependencies: [
                "UltraDrawerViewObjCUtils",
                "pop"
            ]
        ),
        .testTarget(
            name: "UltraDrawerViewTests",
            dependencies: ["UltraDrawerView"]),
    ],
    swiftLanguageVersions: [.v5]
)
