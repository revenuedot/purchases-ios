Pod::Spec.new do |s|
  s.name             = "RevenueDotPurchases"
  s.module_name      = "RevenueCat"
  s.version          = "5.91.0"
  s.summary          = "Subscription and in-app-purchase backend service. RevenueDot fork of RevenueCat's MIT SDK."

  s.description      = <<-DESC
                       Save yourself the hassle of implementing a subscriptions backend. This is RevenueDot's drop-in fork of RevenueCat's MIT SDK; it talks to RevenueDot, the open-source subscription server (https://revenuedot.app). Not affiliated with RevenueCat.
                       DESC

  s.homepage         = "https://revenuedot.app"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { "RevenueDot" => "https://github.com/revenuedot", "RevenueCat, Inc. (original MIT SDK)" => "https://github.com/RevenueCat" }
  s.source           = { :git => "https://github.com/revenuedot/purchases-ios.git", :tag => "#{s.version}-revenuedot" }
  s.documentation_url = "https://revenuedot.app/docs"

  s.framework      = 'StoreKit'
  s.swift_version  = '5.8'

  s.ios.deployment_target = '13.0'
  s.watchos.deployment_target = '6.2'
  s.tvos.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.visionos.deployment_target = '1.0'
  
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) COCOAPODS',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS[sdk=xros*]' => '$(inherited) COCOAPODS VISION_OS',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS[sdk=xrsimulator*]' => '$(inherited) COCOAPODS VISION_OS',
  }

  s.source_files = 'Sources/**/*.swift'
  s.exclude_files = 'Sources/LocalReceiptParsing/ReceiptParser-only-files/**'
  
  s.resource_bundles = {'RevenueCat' => ['Sources/PrivacyInfo.xcprivacy']}
end
