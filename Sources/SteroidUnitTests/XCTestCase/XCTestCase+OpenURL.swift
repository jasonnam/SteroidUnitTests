//
//  XCTestCase+OpenURL.swift
//  SteroidUnitTests
//
//  Copyright (c) 2018 Jason Nam (https://jasonnam.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import XCTest

public extension XCTestCase {

    /// Open url with Safari.
    ///
    /// - Parameters:
    ///   - url: URL to open.
    ///   - application: Application to open after opening the url.
    public func open(_ url: String, andLaunchApplication application: XCUIApplication? = nil) {
        // Get Safari app using its bundle identifier
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        // Launch Safari
        safari.launch()
        // Ensure Safari is running in foreground
        _ = safari.wait(for: .runningForeground, timeout: 5)

        // Open url
        safari.buttons["URL"].tap()
        safari.typeText(url)
        safari.typeText("\n")
        safari.buttons["Open"].tap()

        // Open destination application
        _ = application?.wait(for: .runningForeground, timeout: 5)
    }
}
