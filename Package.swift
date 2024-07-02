// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TapFontKit-iOS",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TapFontKit-iOS",
            targets: ["TapFontKit-iOS"]), 
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TapFontKit-iOS",
            resources: [.copy("TapFontKitResources/Lato-Black.ttf"),
                        .copy("TapFontKitResources/Lato-Bold.ttf"),
                        .copy("TapFontKitResources/Lato-Light.ttf"),
                        .copy("TapFontKitResources/Lato-Regular.ttf"),
                        .copy("TapFontKitResources/Lato-Thin.ttf"),
                        .copy("TapFontKitResources/Tajawal-Black.ttf"),
                        .copy("TapFontKitResources/Tajawal-Bold.ttf"),
                        .copy("TapFontKitResources/Tajawal-ExtraBold.ttf"),
                        .copy("TapFontKitResources/Tajawal-ExtraLight.ttf"),
                        .copy("TapFontKitResources/Tajawal-Light.ttf"),
                        .copy("TapFontKitResources/Tajawal-Medium.ttf"),
                        .copy("TapFontKitResources/Tajawal-Regular.ttf")]),
        .testTarget(
            name: "TapFontKit-iOSTests",
            dependencies: ["TapFontKit-iOS"]),
    ],
    swiftLanguageVersions: [.v5]
)
