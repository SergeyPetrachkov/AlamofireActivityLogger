// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AlamofireActivityLogger",
    platforms: [.iOS(.v11),
                .macOS(.v10_12),
                .tvOS(.v10),
                .watchOS(.v3)],
    products: [
        .library(name: "AlamofireNetworkActivityLogger",
                 targets: ["AlamofireNetworkActivityLogger"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git",
                 from: "5.4.0")
    ],
    targets: [
        .target(name: "AlamofireNetworkActivityLogger",
                dependencies: ["Alamofire"],
                path: "alamofire_activity_logger/ActivityLogger")
    ],
    swiftLanguageVersions: [.v5]
)
