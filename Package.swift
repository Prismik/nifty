 // swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Nifty",
    products: [
        .library(name: "Nifty", targets: ["Nifty"])
    ],
    dependencies: [
        .package(url: "git@github.com:Prismik/Nifty-libs.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "Nifty",
            dependencies: [
                .product(name: "CLapacke", package: "Nifty-libs"),
                .product(name: "CBlas", package: "Nifty-libs"),
            ]
        ),
        .testTarget(
            name: "NiftyTests",
            dependencies: ["Nifty"],
            path: "Tests"
        )
    ]
)