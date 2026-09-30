Pod::Spec.new do |s|
  s.name             = "RevenueDotPurchasesUI"
  s.module_name      = "RevenueCatUI"
  s.version          = "5.92.0-SNAPSHOT"
  s.summary          = "UI library for RevenueCat paywalls. RevenueDot fork of RevenueCat's MIT SDK."

  s.description      = <<-DESC
                       Save yourself the hassle of implementing a subscriptions backend. This is RevenueDot's drop-in fork of RevenueCat's MIT SDK; it talks to RevenueDot, the open-source subscription server (https://revenuedot.app). Not affiliated with RevenueCat.
                       DESC

  s.homepage         = "https://revenuedot.app"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { "RevenueDot" => "https://github.com/revenuedot", "RevenueCat, Inc. (original MIT SDK)" => "https://github.com/RevenueCat" }
  s.source           = { :git => "https://github.com/revenuedot/purchases-ios.git", :tag => "#{s.version}-revenuedot" }
  s.documentation_url = "https://revenuedot.app/docs"

  s.framework      = 'SwiftUI'
  s.swift_version  = '5.8'

  # RevenueCatUI APIs are not available in all these platforms / versions, however retaining this support at the Pod level 
  # allows us to depend on it in the same platforms as RevenueCat.
  # Opening support allows us to depend on it in the same platforms as RevenueCat.
  s.ios.deployment_target = '13.0'
  s.watchos.deployment_target = '6.2'
  s.tvos.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.visionos.deployment_target = '1.0'
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source_files = 'RevenueCatUI/**/*.swift'

  s.dependency 'RevenueDotPurchases', s.version.to_s

  s.resource_bundles = {
    'RevenueCat_RevenueCatUI' => [
      # This is done automatically by SPM but must be added manually here:
      'RevenueCatUI/Resources/*.lproj/*.strings',
       # Note: these have to match the values in Package.swift
       'RevenueCatUI/Resources/icons.xcassets',
       'RevenueCatUI/Resources/Media.xcassets'
    ]
  }
  
end
