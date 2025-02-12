// swift-tools-version:5.9
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
        .library(name: "SwiftLlama", targets: ["SwiftLlama"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ggerganov/llama.cpp.git", branch: "master")
    ],
    targets: [
        .target(
            name: "SwiftLlama",
            dependencies: [
                .product(name: "llama", package: "llama.cpp")
            ],
            cxxSettings: [
                // Tells the compiler where to find your C++ headers.
                .headerSearchPath("include"),
                // Use a particular C++ standard, for example:
                .unsafeFlags(["-std=c++17"])
            ]
        ),
        // .testTarget(name: "SwiftLlamaTests", dependencies: ["SwiftLlama"]),
    ]
)
