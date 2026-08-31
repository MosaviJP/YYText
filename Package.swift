// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "YYText",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YYText",
            targets: ["YYText"]
        )
    ],
    targets: [
        .target(
            name: "YYText",
            path: ".",
            exclude: [
                "Attributes",
                "Demo",
                "Framework"
            ],
            sources: ["YYText"],
            publicHeadersPath: "YYText/PublicHeaders",
            cSettings: [
                .headerSearchPath("YYText"),
                .headerSearchPath("YYText/Component"),
                .headerSearchPath("YYText/PublicHeaders"),
                .headerSearchPath("YYText/String"),
                .headerSearchPath("YYText/Utility")
            ],
            linkerSettings: [
                .linkedFramework("Accelerate"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreText"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
