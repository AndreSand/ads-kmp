//
//  AppDelegate.swift
//  iosApp
//
//  Created by Andres Sandoval on 1/4/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import Foundation
import SwiftUI
import GoogleMobileAds

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Initialize AdMob iOS Ads SDK
               MobileAds.shared.start(completionHandler: { status in
                   print("iOS AppDelegate: AdMob initialized with status: \(status.description)")
               })
        
        return true
    }
}
