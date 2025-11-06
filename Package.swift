// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CollectionKit",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "CollectionKit",
            targets: ["CollectionKit", "WobbleAnimator"]
        ),
    ],
    targets: [
        .target(
            name: "CollectionKit",
            path: "Sources"
        ),
        .target(
            name: "WobbleAnimator",
            path: "WobbleAnimator"
        ),
        .testTarget(
            name: "CollectionKitTests",
            dependencies: ["CollectionKit"],
            path: "CollectionKitTests"
        ),
    ]
)
