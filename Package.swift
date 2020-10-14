// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameworkSample",
    products: [
        .library(
            name: "FrameworkSample",
            targets: ["FrameworkSampleWrapper"]),
    ],
    targets: [
        .target(
            name: "FrameworkSampleWrapper",
            dependencies: [
                .target(name: "FrameworkSample", condition: .when(platforms: .some([.iOS]))),
            ],
            path: "Sources/FrameworkSample/Resources",
            resources: [.process("SampleView.xib")],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation")
            ]
        ),
        .binaryTarget(name: "FrameworkSample",
                      path: "Sources/FrameworkSample/FrameworkSample.xcframework")
    ]
)
