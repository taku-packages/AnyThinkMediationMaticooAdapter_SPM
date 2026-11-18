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
        .package(url: "https://github.com/cloudadrd/zMaticooPodSpec.git", exact: "2.3.2")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMaticooAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkMaticooAdapter/2.3.2.2.0/AnyThinkMaticooAdapter-2.3.2.2.0.zip",
            checksum: "e7b6fb20820517a1fa122666ff001f5518c05695f355c0540c7bd78061a53a04"
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
