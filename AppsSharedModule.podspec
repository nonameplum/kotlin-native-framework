Pod::Spec.new do |spec|
    spec.name                     = 'AppsSharedModule'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://github.com/nonameplum/kotlin-native-framework'
    spec.source                   = { :git => "Not Published", :tag => "Cocoapods/#{spec.name}/#{spec.version}" }
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'Apps Shared Module'

    spec.static_framework         = true
    spec.vendored_frameworks      = "build/cocoapods/framework/AppsSharedModule.framework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.ios.deployment_target = '11.0'

                

    spec.pod_target_xcconfig = {
        'KOTLIN_TARGET[sdk=iphonesimulator*]' => 'ios_x64',
        'KOTLIN_TARGET[sdk=iphoneos*]' => 'ios_arm',
        'KOTLIN_TARGET[sdk=watchsimulator*]' => 'watchos_x86',
        'KOTLIN_TARGET[sdk=watchos*]' => 'watchos_arm',
        'KOTLIN_TARGET[sdk=appletvsimulator*]' => 'tvos_x64',
        'KOTLIN_TARGET[sdk=appletvos*]' => 'tvos_arm64',
        'KOTLIN_TARGET[sdk=macosx*]' => 'macos_x64'
    }

    spec.prepare_command = <<-SCRIPT
          set -ev
          ./gradlew --no-daemon -Pframework=#{spec.name}.framework linkReleaseFrameworkIos --stacktrace --info
        SCRIPT
end