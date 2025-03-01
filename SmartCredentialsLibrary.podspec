#
#  Be sure to run `pod spec lint SmartCredentialsLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|

  s.name         = 'SmartCredentialsLibrary'
  s.version      = "5.5.0"
  s.summary      = "Smart Credentials is a library with multiple generic functionalities, like secure storage, authorization, camera scanners and more."

  s.description  = <<-DESC
Smart Credentials is a library with multiple generic functionalities. The focus is on having components that are not application-specific, so that they can be easily integrated into multiple applications.
The main feature of the library is the secure storage. The library itself is data type – agnostic and can handle both sensitive and plain user data. Based on the data definition, the library has internal mechanisms to retrieve/store content or manipulate data pieces.
Other features include QR-based login, barcode reader, OCR reader/parser, OTP generator, fingerprint/pin/pattern/faceId authorization.
                   DESC

  s.homepage     = "https://github.com/telekom/SmartCredentials-SDK-ios"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  s.author             = "Deutsche Telekom AG"

  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = "5.0"

  s.source       = { :git => "https://github.com/telekom/SmartCredentials-SDK-ios.git", :tag => "#{s.version}" }

  # s.source_files  = "SmartCredentials/**/*.{swift,h,m}"
  # s.exclude_files = "SmartCredentials/**/*.plist"

  # Core
  s.subspec 'Core' do |sp|
    sp.source_files  = 'SmartCredentials/Core/Core/**/*.{h,swift}'
  end

  # # Authentication
  # s.subspec 'Authentication' do |sp|
  #   sp.source_files  = 'SmartCredentials/Authentication/**/*.swift'
  #   sp.framework = 'AppAuth'
  #   sp.libraries = 'libAppAuth-iOS'
  # end

  # # Authorization
  # s.subspec 'Authorization' do |sp|
  #   sp.source_files  = 'SmartCredentials/Authorization/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  # end

  # # CameraScanner
  # s.subspec 'CameraScanner' do |sp|
  #   sp.source_files  = 'SmartCredentials/CameraScanner/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  # end

  # # DocumentScanner
  # s.subspec 'DocumentScanner' do |sp|
  #   sp.source_files  = 'SmartCredentials/DocumentScanner/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  #   sp.framework = 'MicroBlink.framework'
  # end

  # # Encryption
  # s.subspec 'Encryption' do |sp|
  #   sp.source_files  = 'SmartCredentials/Encryption/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  # end

  # # Networking
  # s.subspec 'Networking' do |sp|
  #   sp.source_files  = 'SmartCredentials/Networking/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  # end

  # # OTP
  # s.subspec 'OTP' do |sp|
  #   sp.source_files  = 'SmartCredentials/OTP/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core', 'SmartCredentialsLibrary/CameraScanner', 'SmartCredentialsLibrary/Storage' 
  # end

  # # QRLogin
  # s.subspec 'QRLogin' do |sp|
  #   sp.source_files  = 'SmartCredentials/QRLogin/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core', 'SmartCredentialsLibrary/Authorization'
  #   sp.framework = 'Starscream.framework'
  # end

  # # Storage
  # s.subspec 'Storage' do |sp|
  #   sp.source_files  = 'SmartCredentials/Storage/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  # end

  # # EID
  # s.subspec 'EID' do |sp|
  #   sp.source_files  = 'SmartCredentials/EID/**/*.swift'
  #   sp.dependency 'SmartCredentialsLibrary/Core'
  #   sp.dependency = :spm => 'https://github.com/Governikus/AusweisApp2-SDK-iOS'
  # end

end
