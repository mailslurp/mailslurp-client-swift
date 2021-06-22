# MailSlurp Swift Client
Send and receive emails in Swift and Objective C. MailSlurp Swift client for manage email accounts in iOS, MacOS, TVOS, and more. Built with OpenAPI and PromiseKit.

## Quick links

- [Swift package](https://github.com/mailslurp/mailslurp-client-swift/)
- [Getting started guide](https://www.mailslurp.com/guides/)
- [Documentation](https://www.mailslurp.com/docs/swift/)
- [Examples](https://www.mailslurp.com/examples/)
- [Support](https://www.mailslurp.com/support/)

## Setup API Key
MailSlurp is free to use but you need an API Key. [Sign up](https://app.mailslurp.com) and create an API Key using the [MailSlurp dashboard](https://app.mailslurp.com).

Then add the GitHub release using Swift package manager for MailSlurp:
```
```swift
// add mailslurp dependency
.package(url: "https://github.com/mailslurp/mailslurp-client-swift", from: "12.4.2"),
```

When you make requests use an API controller's `withRequestBuilder` method and the `addHeader("x-api-key", "your-api-key")` method to add authentication to your requests.

```swift
let apiKey = ProcessInfo.processInfo.environment["API_KEY"] ?? ""
InboxControllerAPI.createInboxWithDefaultsWithRequestBuilder()
    // use addHeader to add your api key to requests
    .addHeader(name: "x-api-key", value: apiKey)
    .execute()
    // uses PromiseKit for response handling
    .done { response in
        XCTAssertTrue(response.statusCode == 201)
        expectation.fulfill()
     }.catch { errorType in }
```

## Platform compatibility
MailSlurp Swift client is built to target Swift 5.x and XCode 12.x.

| Platform | Minimum Version |
|----------|-----------------|
| iOS      | v9              |
| MacOS    | V10.11          |
| TVOS     | v9              |
| WatchOS  | v3              |

## Install MailSlurp package
Create a new swift project using:

```
swift package init --type=executable
```

Edit `Packages.swift` and add `https://github.com/mailslurp/mailslurp-client-swift` as a package and a target dependency.

```swift
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "example",
    // add platform as mailslurp requires macOS >= v10_11
    platforms: [
        .macOS(.v10_11)
    ],
    dependencies: [
        // add mailslurp dependency
        .package(url: "https://github.com/mailslurp/mailslurp-client-swift", from: "12.4.2"),
    ],
    targets: [
        // add mailslurp to the target
        .target(
            name: "example",
            dependencies: ["mailslurp"]),
        .testTarget(
            name: "exampleTests",
            dependencies: ["mailslurp"]),
    ]
)
```

## Example usage
MailSlurp uses PromiseKit. To test using XCTest and MailSlurp use the example below:

```swift
import XCTest
import class Foundation.Bundle
import mailslurp

final class exampleTests: XCTestCase {
    func testExample() throws {
        let expectation = self.expectation(description: "Can create inbox")
        let apiKey = ProcessInfo.processInfo.environment["API_KEY"] ?? ""
        InboxControllerAPI.createInboxWithDefaultsWithRequestBuilder()
            .addHeader(name: "x-api-key", value: apiKey)
            .execute()
            .done { response in
                XCTAssertTrue(response.statusCode == 201)
                XCTAssertTrue(response.body?.emailAddress?.contains("@mailslurp") ?? false)
                expectation.fulfill()
             }.catch { errorType in
                XCTAssertFalse(true, "Should not throw exception")
             }
        waitForExpectations(timeout: 5, handler: nil)

    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }
}
```

To run the test execute:

```bash
API_KEY=your-api-key swift test
```
