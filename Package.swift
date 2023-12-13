// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DependenciesPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DependenciesPackage",
            targets: ["DependenciesPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danielgindi/Charts", exact: "4.1.0"),
        .package(url: "https://github.com/airbnb/lottie-ios", exact: "4.2.0"),
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework", exact: "6.12.2"),
        .package(url: "https://github.com/CleverTap/clevertap-ios-sdk", exact: "5.0.1"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "10.16.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DependenciesPackage",
            dependencies: [
                .product(name: "Charts", package: "Charts"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "AppsFlyerLib", package: "AppsFlyerFramework"),
                .product(name: "CleverTapSDK", package: "clevertap-ios-sdk"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseDynamicLinks", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                .product(name: "FirebasePerformance", package: "firebase-ios-sdk"),
                .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
                .product(name: "FirebaseStorage", package: "firebase-ios-sdk"),
            ],
            path: "Sources/TestController"
        ),
        .testTarget(
            name: "DependenciesPackageTests",
            dependencies: ["DependenciesPackage"]),
    ]
)
