 // swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Nifty",
    products: [
        .library(name: "nifty", targets: ["nifty"])
    ],
    dependencies: [
        .package(url: "git@github.com:Prismik/Nifty-libs.git", branch: "master"),
    ],
    targets: [
        .target(name: "nifty")
    ]
)