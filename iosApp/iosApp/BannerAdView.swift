//
//  BannerAdView.swift
//  iosApp
//
//  Created by Andres Sandoval on 1/4/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import Foundation
import SwiftUI
import GoogleMobileAds
import UIKit
import SwiftUI

struct BannerAdView: UIViewRepresentable {
    func makeUIView(context: Context) -> GADBannerView {
       
        let bannerView = GADBannerView()
        // https://developers.google.com/admob/ios/quick-start
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2435281174" // Replace with your ad unit ID
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            bannerView.rootViewController = rootViewController
        }
        
        let request = GADRequest()
        bannerView.load(request)
        return bannerView
    }
    
    func updateUIView(_ uiView: GADBannerView, context: Context) {}
}
