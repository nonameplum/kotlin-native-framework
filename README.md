# Apps Shared Module

Kotlin Native framework that is used by Android and iOS app.

Trying to make Multiplatform framework on separated repository from Android and iOS.

---

An example app that uses the framework via Cocoapods is inside `AppsSharedModuleApp` directory:

`pod 'AppsSharedModule', :git => 'https://github.com/nonameplum/kotlin-native-framework.git', :branch => 'main'`

This branch has a flaw that `AppsSharedModuleApp` is using this remote pod and while building it fails with the error: `AppsSharedModule/gradlew: No such file or directory`

