// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "AgenticUsage",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "AgenticUsage",
            targets: [
                "AgenticUsage",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leviouwendijk/Agentic.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/leviouwendijk/Tokens.git",
            branch: "master"
        ),
    ],
    targets: [
        .target(
            name: "AgenticUsage",
            dependencies: [
                .product(
                    name: "Agentic",
                    package: "Agentic"
                ),
                .product(
                    name: "Tokens",
                    package: "Tokens"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [
        .v6,
    ]
)
