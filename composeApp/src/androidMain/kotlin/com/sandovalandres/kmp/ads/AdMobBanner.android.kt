package com.sandovalandres.kmp.ads

import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.viewinterop.AndroidView
import com.google.android.gms.ads.AdRequest
import com.google.android.gms.ads.AdSize
import com.google.android.gms.ads.AdView

@Composable
actual fun AdMobBanner(modifier: Modifier) {
    AndroidView(
        modifier = modifier.fillMaxWidth(),
        factory = { context ->
            AdView(context).apply {
                setAdSize(AdSize.FULL_BANNER)
                adUnitId = "ca-app-pub-3940256099942544/9214589741" // Replace with your ad unit ID
                loadAd(AdRequest.Builder().build())
            }
        }
    )
}