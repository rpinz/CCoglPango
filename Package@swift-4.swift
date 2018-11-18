// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CCoglPango",
    pkgConfig: "cogl-pango-1.0",
    providers: [
        .apt(["libcogl-pango-dev"])
    ],
    swiftLanguageVersions: [4]
)
