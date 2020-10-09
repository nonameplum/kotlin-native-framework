# Apps Shared Module

Kotlin Native framework that is used by Android and iOS app.

Trying to make Multiplatform framework on separated repository from Android and iOS.

---

An example app that uses the framework via Cocoapods is inside `AppsSharedModuleApp` directory:

`pod 'AppsSharedModule', :git => 'https://github.com/nonameplum/kotlin-native-framework.git', :branch => 'fixed_script'`

This branch has a flaw that `AppsSharedModuleApp` can't be build with iOS Simulator but can be on the device. While building for the simulator it results with error: `/AppsSharedModule/AppsSharedModuleApp/Pods/AppsSharedModule/build/cocoapods/framework/AppsSharedModule.framework/AppsSharedModule, building for iOS Simulator-x86_64 but attempting to link with file built for iOS-arm64` 

