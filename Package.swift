// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Game",
    platforms: [.macOS(.v10_15)],
    products: [.library(name: "DiscordSDK", targets: ["DiscordSDK"])],
    targets: [
        .target(name: "DiscordSDK", dependencies: ["CDiscordSDK"], path: "Sources/DiscordSDK"),
        .systemLibrary(name: "CDiscordSDK", path: "Sources/CDiscordSDK")
    ]
)
