// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameworkSample",
    products: [
        .library(
            name: "FrameworkSample",
            targets: ["FrameworkSampleWrapper", "FrameworkSample"]),
    ],
    targets: [
        .target(
            name: "FrameworkSampleWrapper",
            dependencies: [
                .target(name: "FrameworkSample", condition: .when(platforms: .some([.iOS]))),
            ],
            resources: [.process("SampleView.xib")],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation")
            ]
        ),
        .binaryTarget(name: "FrameworkSample",
                      path: "Sources/FrameworkSample/TestFramework.xcframework")
    ]
)
