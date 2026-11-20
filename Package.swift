// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationMaticooAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationMaticooAdapter",
            targets: ["AnyThinkMediationMaticooAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.85"),
        .package(url: "https://github.com/cloudadrd/zMaticooPodSpec.git", exact: "2.3.3")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMaticooAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkMaticooAdapter/20303.2.10/AnyThinkMaticooAdapter-20303.2.10.zip",
            checksum: "ae6d5ab4e677ac8c0277d72fda296c8beca9003e06150f2def1d4cc069172c9c"
        ),
        .target(
            name: "AnyThinkMediationMaticooAdapterTarget",
            dependencies: [
                "AnyThinkMaticooAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "MaticooSDK", package: "zMaticooPodSpec")
            ],
            path: "Sources/AnyThinkMediationMaticooAdapterTarget"
        )
    ]
)
