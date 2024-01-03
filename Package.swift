// swift-tools-version: 5.7.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mycrocastSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "mycrocastSDK",
            targets: ["MycrocastSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/emqx/CocoaMQTT.git", exact: "2.1.3"),
        .package(url: "https://github.com/mycrocast/MCCOpus.git", exact: "1.0.1"),
    ],
    targets: [
        .binaryTarget(name: "MycrocastSDK", 
                      path: "frameworks/MycrocastSDK.xcframework")]
)
