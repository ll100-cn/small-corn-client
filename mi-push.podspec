Pod::Spec.new do |s|
  s.name             = "mi-push"
  s.version          = "20200806"
  s.summary          = "小米推送"
  s.description      = <<-DESC
    小米推送 SDK
  DESC

  s.homepage         = "https://dev.mi.com"
  s.license          = 'UNLICENSE'
  s.author           = { "mipush" => "dev.mi.com" }
  s.source           = { git: "https://github.com/ll100-cn/small-corn-client.git", tag: s.version }

  s.platform     = :ios, '9.0'
  s.requires_arc = false
  s.source_files = "mi-push/ios/MiPushSDK.h", "mi-push/ios/MiPushApnsAckSDK.h"
  s.vendored_libraries = 'mi-push/ios/libMiPushSDK.a', 'mi-push/ios/libMiPushApnsAckSDK.a'
  s.frameworks = 'SystemConfiguration', 'UserNotifications', 'MobileCoreServices', 'CFNetwork', 'CoreTelephony'
  s.libraries = 'resolv', 'xml2', 'z'
end
