// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SteroidUnitTests",
    products: [
        .library(
            name: "SteroidUnitTests",
            targets: ["SteroidUnitTests"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SteroidUnitTests",
            dependencies: []),
        .testTarget(
            name: "SteroidUnitTestsTests",
            dependencies: ["SteroidUnitTests"]),
    ]
)
