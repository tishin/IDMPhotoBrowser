// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "IDMPhotoBrowser",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v10),
    ],
    products: [
        .library(name: "IDMPhotoBrowser", targets: ["IDMPhotoBrowser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage", from: "5.10.0"),
        .package(url: "https://github.com/tishin/DACircularProgress", from: "2.4.0"),
    ],
    targets: [
        .target(
            name: "IDMPhotoBrowser",
            dependencies: [
                .byName(name: "SDWebImage"),
                .byName(name: "DACircularProgress"),
            ],
            path: "Classes",
            resources: [
                Resource.process("IDMPBLocalizations.bundle"),
                Resource.process("IDMPhotoBrowser.bundle"),
            ],
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "IDMPhotoBrowserTests",
            dependencies: ["IDMPhotoBrowser"]
        ),
    ]
)
