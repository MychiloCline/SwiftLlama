// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SwiftLlama",
    platforms: [
        .macOS(.v13),
        .iOS(.v14),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SwiftLlama",
            targets: ["SwiftLlama"]
        ),
    ],
    dependencies: [
        // No external dependencies
    ],
    targets: [
        .target(
            name: "SwiftLlama",
            dependencies: []
        )
        // .testTarget(name: "SwiftLlamaTests", dependencies: ["SwiftLlama"]),
    ]
)
