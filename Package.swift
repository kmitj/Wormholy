// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Wormholy",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Wormholy",
            targets: ["WormholySwift", "WormholyObjC"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WormholySwift",
            dependencies: [],
            resources: [
                .process("SupportFiles/Assets.xcassets")
            ]
        ),
        .target(
            name: "WormholyObjC",
            dependencies: [
                "WormholySwift"
            ],
            publicHeadersPath: "include"
        ),
    ]
)
