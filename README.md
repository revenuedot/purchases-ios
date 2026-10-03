<!-- revenuedot:readme:start -->
<p align="center"><a href="https://revenuedot.app"><picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/revenuedot/revenuedot/main/brand/kit/wordmark/revenuedot-lockup-white.svg">
  <img alt="RevenueDot" src="https://raw.githubusercontent.com/revenuedot/revenuedot/main/brand/kit/wordmark/revenuedot-lockup-black.svg" height="40">
</picture></a></p>

# RevenueDot iOS SDK

This is RevenueDot's MIT fork of RevenueCat's `purchases-ios`: the same classes and method names, pointed at a RevenueDot server ([RevenueDot Cloud](https://app.revenuedot.app/signup) at `https://api.revenuedot.app`, or one you host) with RevenueDot's response-signing key built in, and kept in sync with upstream.

[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](LICENSE) [![CocoaPods](https://img.shields.io/cocoapods/v/RevenueDotPurchases?label=CocoaPods)](https://cocoapods.org/pods/RevenueDotPurchases) [![Swift Package](https://img.shields.io/github/v/tag/revenuedot/purchases-ios?filter=*-revenuedot&label=Swift%20Package)](https://github.com/revenuedot/purchases-ios/releases) [![Upstream](https://img.shields.io/badge/upstream-RevenueCat%2Fpurchases--ios_5.92.0--SNAPSHOT-lightgrey)](https://github.com/RevenueCat/purchases-ios)

## Install

```ruby
# Podfile
pod 'RevenueDotPurchases', '5.91.0'
pod 'RevenueDotPurchasesUI', '5.91.0'   # only if you use RevenueCatUI
```
```swift
// Package.swift, or Xcode > Add Package Dependencies
.package(url: "https://github.com/revenuedot/purchases-ios", exact: "5.91.0-revenuedot")
// Products: "RevenueCat" and "RevenueCatUI"
```
The modules stay `RevenueCat` and `RevenueCatUI`, so `import RevenueCat` does not change.

## Configure

```swift
import RevenueCat

// Self-hosted server only: RevenueDot Cloud (https://api.revenuedot.app) is the default.
Purchases.proxyURL = URL(string: "https://revenuedot.example.com")!
Purchases.configure(withAPIKey: "appl_...")   // the app's public key from the RevenueDot dashboard
```

The fork already trusts RevenueDot's signing key, so no signature or verification setting is needed. Full guide: https://revenuedot.app/docs/sdks/ios.

## What RevenueDot adds

- **Self-host for free, or use RevenueDot Cloud** free up to $10,000 a month of tracked revenue ([pricing](https://revenuedot.app/pricing)).
- **The same REST API and webhook payloads** as RevenueCat, so your backend and integrations keep working ([API reference](https://revenuedot.app/docs/api)).
- **Paywalls, experiments and the Customer Center** built in the RevenueDot dashboard and rendered by this SDK ([guides](https://revenuedot.app/docs/guides)).
- **A one-line migration:** point the stock SDK at RevenueDot with `setProxyURL`, or install this fork and drop the line ([migration guide](https://revenuedot.app/docs/migrate)).

## Links

- **Docs for this SDK:** https://revenuedot.app/docs/sdks/ios
- **Example app:** https://github.com/revenuedot/examples/tree/main/mobile/ios-swiftui
- **Releases and changelog:** https://github.com/revenuedot/purchases-ios/releases (tags `<upstream version>-revenuedot`; upstream's changes are in `CHANGELOG.md`)
- **RevenueDot server and dashboard:** https://github.com/revenuedot/revenuedot
- **Fork pipeline (what we change and how upstream is merged):** https://github.com/revenuedot/revenuedot/tree/main/scripts/forks

RevenueDot is not affiliated with RevenueCat, Inc. RevenueCat's copyright notice stays in `LICENSE`; RevenueDot's changes are MIT too.

---

## Upstream README (RevenueCat's, unchanged)
<!-- revenuedot:readme:end -->

<h3 align="center">😻 In-App Subscriptions Made Easy 😻</h3>

[![License](https://img.shields.io/cocoapods/l/RevenueCat.svg?style=flat)](http://cocoapods.org/pods/RevenueCat)
[![Version](https://img.shields.io/cocoapods/v/RevenueCat.svg?style=flat)](https://cocoapods.org/pods/RevenueCat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://docs.revenuecat.com/docs/ios#section-install-via-carthage)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-orange.svg)](https://docs.revenuecat.com/docs/ios#section-install-via-swift-package-manager)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FRevenueCat%2Fpurchases-ios%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/RevenueCat/purchases-ios)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FRevenueCat%2Fpurchases-ios%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/RevenueCat/purchases-ios)

RevenueCat is a powerful, reliable, and free to use in-app purchase server with cross-platform support. Our open-source framework provides a backend and a wrapper around StoreKit and Google Play Billing to make implementing in-app purchases and subscriptions easy. 

Whether you are building a new app or already have millions of customers, you can use RevenueCat to:

  * Fetch products, make purchases, and check subscription status with our [native SDKs](https://docs.revenuecat.com/docs/installation). 
  * Host and [configure products](https://docs.revenuecat.com/docs/entitlements) remotely from our dashboard. 
  * Analyze the most important metrics for your app business [in one place](https://docs.revenuecat.com/docs/charts).
  * See customer transaction histories, chart lifetime value, and [grant promotional subscriptions](https://www.revenuecat.com/docs/dashboard-and-metrics/customer-history/promotionals).
  * Get notified of real-time events through [webhooks](https://docs.revenuecat.com/docs/webhooks).
  * Send enriched purchase events to analytics and attribution tools with our easy integrations.

Sign up to [get started for free](https://app.revenuecat.com/signup).

## RevenueCat.framework

*RevenueCat* is the client for the [RevenueCat](https://www.revenuecat.com/) subscription and purchase tracking system. It's 100% `Swift` and compatible with `Objective-C`.

## Migrating from Purchases v4 to v5
- See our [Migration guide](https://revenuecat.github.io/purchases-ios-docs/v5_api_migration_guide.html)

## Migrating from Purchases v3 to v4
- See our [Migration guide](https://revenuecat.github.io/purchases-ios-docs/v4_api_migration_guide.html)

## RevenueCat SDK Features
|   | RevenueCat |
| --- | --- |
✅ | Server-side receipt validation
➡️ | [Webhooks](https://docs.revenuecat.com/docs/webhooks) - enhanced server-to-server communication with events for purchases, renewals, cancellations, and more
🖥 | iOS, tvOS, macOS, watchOS, Mac Catalyst, and visionOS support
🎯 | Subscription status tracking - know whether a user is subscribed whether they're on iOS, Android or web
📊 | Analytics - automatic calculation of metrics like conversion, mrr, and churn
📝 | [Online documentation](https://docs.revenuecat.com/docs) and [SDK Reference](http://revenuecat.github.io/purchases-ios-docs/) up to date
🔀 | [Integrations](https://www.revenuecat.com/integrations) - over a dozen integrations to easily send purchase data where you need it
💯 | Well maintained - [frequent releases](https://github.com/RevenueCat/purchases-ios/releases)
📮 | Great support - [Contact us](https://revenuecat.com/support)

## Getting Started
For more detailed information, you can view our complete documentation at [docs.revenuecat.com](https://docs.revenuecat.com/docs).

Please follow the [Quickstart Guide](https://docs.revenuecat.com/docs/) for more information on how to install the SDK.

> [!TIP]
> When integrating with SPM, it is recommended to add the SPM mirror repository for faster download/integration times: https://github.com/RevenueCat/purchases-ios-spm

Or view our iOS sample apps:
- [MagicWeather](Examples/MagicWeather)
- [MagicWeather SwiftUI](Examples/MagicWeatherSwiftUI)

## Requirements
- Xcode 15.0+

| Platform | Minimum target |
|----------|----------------|
| iOS      | 13.0+          |
| tvOS     | 13.0+          |
| macOS    | 10.15+         |
| watchOS  | 6.2+           |
| visionOS | 1.0+           |

## SDK Reference
Our full SDK reference [can be found here](https://revenuecat.github.io/purchases-ios-docs).

## Contributing
Contributions are always welcome! To learn how you can contribute, please see the [Contributing Guide](./Contributing/CONTRIBUTING.md).
