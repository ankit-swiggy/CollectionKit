// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CollectionKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CollectionKit",
            targets: ["CollectionKit", "WobbleAnimator"]
        ),
    ],
    dependencies: [
        // 👇 Add the dependency here
        .package(url: "https://github.com/lkzhao/YetAnotherAnimationLibrary.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "CollectionKit",
            dependencies: [],
            path: "Sources"
        ),
        .target(
            name: "WobbleAnimator",
            dependencies: ["YetAnotherAnimationLibrary"],
            path: "WobbleAnimator"
        ),
        .testTarget(
            name: "CollectionKitTests",
            dependencies: ["CollectionKit"],
            path: "CollectionKitTests"
        ),
    ]
)
