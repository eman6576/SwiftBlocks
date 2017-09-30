// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBlocks",
    dependencies: [
        .package(url: "https://github.com/eman6576/SwiftyBind.git", from: "1.0.0"),
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", from: "4.0.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "1.7.9"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.7.1"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-Crypto.git", from: "3.0.1")
    ],
    targets: [
        .target(
            name: "SwiftBlocks",
            dependencies: ["SwiftBlocksAPI"],
            path: "./Sources/SwiftBlocks/"),
        .target(
            name: "SwiftBlocksAPI",
            dependencies: [
                "SwiftyBind",
                "Kitura",
                "HeliumLogger",
                "PerfectCrypto"],
            path: "./Sources/SwiftBlocksAPI/"),
    ]
)
