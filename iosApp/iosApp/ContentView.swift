import UIKit
import SwiftUI
import ComposeApp
import GoogleMobileAds

struct ComposeView: UIViewControllerRepresentable {
   init() {
          MainViewControllerKt.IOSBanner = {
              let adBannerView = VStack {
                  BannerAdView()
              }
              return UIHostingController(rootView: adBannerView)
          }
      }

    func makeUIViewController(context: Context) -> UIViewController {
        MainViewControllerKt.MainViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}


