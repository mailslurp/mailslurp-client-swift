// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "mailslurp",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "mailslurp",
            targets: ["mailslurp"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMajor(from: "8.1.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "mailslurp",
            dependencies: ["PromiseKit", ],
            path: "mailslurp"
        ),
    ],
    swiftLanguageModes: [.v6]
)
