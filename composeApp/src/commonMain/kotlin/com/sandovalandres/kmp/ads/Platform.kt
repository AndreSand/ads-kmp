package com.sandovalandres.kmp.ads

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform