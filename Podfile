# Uncomment this line to define a global platform for your project
platform :ios, '11.0'

use_frameworks!

# Pods for CodeBase target_alo_alo
target 'CodeBase' do
    pod 'Swinject'
    pod 'Bolts-Swift'
    pod 'Moya'
    pod 'KeychainAccess'
    pod 'TPKeyboardAvoiding'
    # pod 'Firebase/Crashlytics'
    # pod 'Firebase/Analytics'
    # pod 'Firebase/Auth'
    pod 'ReachabilitySwift'
    pod 'Kingfisher'
    pod 'RSKImageCropper'
    # pod 'RealmSwift'
    pod 'SwiftyJSON'
    pod 'ObjectMapper'
    pod 'SwiftLint'
    pod 'BadgeSwift'
    pod 'AppCenter/Analytics'


    target :UnitTests
end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
        config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
    end
end
