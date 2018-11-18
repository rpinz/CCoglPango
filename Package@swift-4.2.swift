// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CCoglPango",
    products: [
        .library(name: "CCoglPango",
            targets: ["CCoglPango"])
    ],
    targets: [
        .systemLibrary(
            name: "CCoglPango",
            pkgConfig: "cogl-pango-1.0",
            providers: [
                .brew(["libcogl-pango"]),
                .apt(["libcogl-pango-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
