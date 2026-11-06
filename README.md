# Taku (AnyThink) - iOS zMaticoo Mediation Adapter

The Taku (AnyThink) zMaticoo mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Taku (AnyThink) iOS Core SDK (`AnyThinkiOS`) 6.5.85+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/taku-packages/AnyThinkMediationMaticooAdapter_SPM.git
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `AnyThinkMediationMaticooAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/taku-packages/AnyThinkMediationMaticooAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`AnyThinkiOS`](https://github.com/taku-packages/AnyThinkiOS_SPM.git) (>= 6.5.85, < 7.0.0)
- [`MaticooSDK`](https://github.com/cloudadrd/zMaticooPodSpec.git) (pinned to `2.3.2`), including the official `MaticooSDK.bundle` resources

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
