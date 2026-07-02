// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "custom-clipboard-ios",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "custom-clipboard-ios", targets: ["custom_clipboard_ios"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "custom_clipboard_ios",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            path: "Sources/custom_clipboard_ios",
            sources: ["."],
            publicHeadersPath: "."
        )
    ]
)
