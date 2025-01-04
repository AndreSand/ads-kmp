package com.sandovalandres.kmp.ads

import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIViewController

lateinit var IOSBanner: () -> UIViewController

fun generateIOSBanner(): UIViewController {
    return IOSBanner()
}

fun MainViewController() = ComposeUIViewController(
    configure = {
        enforceStrictPlistSanityCheck = false
    }
) {
    App()
}