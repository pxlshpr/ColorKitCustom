// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorKitCustom",
    platforms: [
        .iOS(.v13),
        .macOS("14.0")
    ],
    products: [
        .library(
            name: "ColorKitCustom",
            targets: ["ColorKit"]),
    ],
    targets: [
        .target(
            name: "ColorKit",
            path: "ColorKit/ColorKit"),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"],
            path: "ColorKit/ColorKitTests"),
    ],
    swiftLanguageVersions: [SwiftVersion.v5]
)
