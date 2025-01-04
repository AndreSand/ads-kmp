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
        
        // initialize AdMob iOS Ads SDK
        GADMobileAds.sharedInstance().start(completionHandler: nil)

        return true
    }
}
