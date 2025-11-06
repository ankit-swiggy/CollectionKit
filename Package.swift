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
        // 👇 Add this line
        .package(url: "https://github.com/lkzhao/YetAnotherAnimationLibrary.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "CollectionKit",
            dependencies: ["YetAnotherAnimationLibrary"],
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
